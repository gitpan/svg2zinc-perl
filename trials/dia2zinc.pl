#!/usr/bin/perl -w
#
#      dia2zinc.pl, a Perl/zinc parser for xml files including SVG namespaces or to generate zinc-perl code
# 
#      Copyright (C) 2003
#      Centre d'Études de la Navigation Aérienne
#
#      Authors: Christophe Mertz <mertz@cena.fr>
#
# $Id: dia2zinc.pl,v 1.2 2003/09/18 08:37:27 mertz Exp $
#-----------------------------------------------------------------------------------

my $TAG= q$Name:  $;
my $REVISION = q$Revision: 1.2 $ ;
my ($VERSION) = $TAG =~ /^\D*([\d_]+)/ ;
if (defined $VERSION and $VERSION ne "_") {
    $VERSION =~ s/_/\./g;
} else {
    $VERSION = $REVISION;
}

use strict;
use XML::Parser;
use Tk::Zinc;
use Tk::Zinc::Debug;
use SVG2zinc;
use Getopt::Long;
#use Tk::PNG;

################ le traitement des options de la ligne de commande
my ($out, $displayResult);
my $verbose = 0;
my $render = 1;
GetOptions("help" => \&usage,
	   "out:s" => \$out,
	   "zinc" => \$displayResult,
	   "verbose" => \$verbose,
	   "render:i" => \$render,
	   "version" => \&displayVersion,
           );

sub usage {
    my ($error) = @_;
    print "$0 [-help] [-verbose] [-version] [-render 0|1|2] [-out filename | -zinc]\n";
    print "  filename to generate should end either with .pl (an executable script)\n";
    print "   or with .pm (a perl module)\n";
    print "$error\n" if defined $error;
    exit;
}

&usage unless ($#ARGV == 0);
&usage ("-zinc and -out options are exclusive\n") if $out and $displayResult;
&usage ("Bad value ($render) for -render option. Must be 0, 1 or 2") unless ($render == 0 or $render == 1 or $render == 2);

my $file = $ARGV[0];

my $zinc;
my $mw;
my ($WIDTH,$HEIGHT) = (600,600);
my $top_group;

if ($displayResult) {
    ### le résultat est affiché directement dans un widget Zinc 
    $mw = MainWindow->new();
    $mw->title($file);
    $zinc = $mw->Zinc(-width => $WIDTH, -height => $HEIGHT,
		      -borderwidth => 0,
		      -render => $render,
		      -backcolor => "white", ## Pourquoi blanc?
		      )->pack;
    &Tk::Zinc::Debug::finditems($zinc);
    &Tk::Zinc::Debug::tree($zinc, -optionsToDisplay => "-tags", -optionsFormat => "row");
    $top_group = $zinc->add('group', 1, -tags => ['topsvggroup']);
    $SVG2zinc::zinc = $zinc;
    $SVG2zinc::zinc = $zinc; # repetition avoids annoying error message "SVG2zinc::zinc used only once"
    &SVG2zinc::parse($file,
		     -result_type => "\$SVG2zinc::zinc",
		     -group => $top_group,
		     -verbose => $verbose,
#		     -prefix => "essai",  # pour préfixer les tags posés sur les items générés
		     );
}
elsif ($out) {
    ### le résultat est sauvegardé dans un fichier; ce fichier est un programme perl exécutable
    print "&SVG2zinc::parse($file, -result_type => $out)\n";
    &SVG2zinc::parse($file,
		     -result_type => $out,
		     -verbose => $verbose,
		     -group => "\$top_group",
		     );
} else {
    ### le fichier est parsé,
    ### le résultat n'est ni affiché, ni sauvegardé
    &SVG2zinc::parse($file,
		     -result_type => 0,
		     -verbose => $verbose,
		     -group => "\$top_group",
		     );
}

my $zoom;
if ($displayResult) {
    my @bbox = $zinc->bbox($top_group);
#    print "bbox=@bbox\n";
    $zinc->translate($top_group, -$bbox[0], -$bbox[1]) if defined $bbox[0] and $bbox[1];
    @bbox = $zinc->bbox($top_group);
    my $ratio = 1;
    $ratio = $WIDTH / $bbox[2] if ($bbox[2] and $bbox[2] > $WIDTH);
    $ratio = $HEIGHT/ $bbox[3] if ($bbox[3] and $HEIGHT/$bbox[3] lt $ratio);

#    print "Ratio = $ratio\n";
    $zoom=1;
    $zinc->scale($top_group, $ratio, $ratio);
    $zinc->Tk::bind('<ButtonPress-1>', [\&press, \&motion]);
    $zinc->Tk::bind('<ButtonRelease-1>', [\&release]);
    
    $zinc->Tk::bind('<ButtonPress-2>', [\&press, \&zoom]);
    $zinc->Tk::bind('<ButtonRelease-2>', [\&release]);

#    $zinc->Tk::bind('<ButtonPress-3>', [\&press, \&mouseRotate]);
#    $zinc->Tk::bind('<ButtonRelease-3>', [\&release]);
    $zinc->bind('all', '<Enter>',
		[ sub { my ($z)=@_; my $i=$z->find('withtag', 'current');
			my @tags = $z->gettags($i);
			pop @tags; # pour enlever 'current'
			print "$i (", $z->type($i), ") [@tags]\n";}] );
    &Tk::MainLoop;
}






##### bindings for moving, rotating, scaling the items
my ($cur_x, $cur_y, $cur_angle);
sub press {
    my ($zinc, $action) = @_;
    my $ev = $zinc->XEvent();
    $cur_x = $ev->x;
    $cur_y = $ev->y;
    $cur_angle = atan2($cur_y, $cur_x);
    $zinc->Tk::bind('<Motion>', [$action]);
}

sub motion {
    my ($zinc) = @_;
    my $ev = $zinc->XEvent();
    my $lx = $ev->x;
    my $ly = $ev->y;
    
    my @res = $zinc->transform($top_group, [$lx, $ly, $cur_x, $cur_y]);
    $zinc->translate($top_group, ($res[0] - $res[2])*$zoom, ($res[1] - $res[3])*$zoom);
    $cur_x = $lx;
    $cur_y = $ly;
}

sub zoom {
    my ($zinc, $self) = @_;
    my $ev = $zinc->XEvent();
    my $lx = $ev->x;
    my $ly = $ev->y;
    my ($maxx, $maxy);
    
    if ($lx > $cur_x) {
	$maxx = $lx;
    } else {
	$maxx = $cur_x;
    }
    if ($ly > $cur_y) {
	$maxy = $ly
    } else {
	$maxy = $cur_y;
    }
    return if ($maxx == 0 || $maxy == 0);
    my $sx = 1.0 + ($lx - $cur_x)/$maxx;
    my $sy = 1.0 + ($ly - $cur_y)/$maxy;
    $cur_x = $lx;
    $cur_y = $ly;
    $zoom = $zoom * $sx;
    $zinc->scale($top_group, $sx, $sx); #$sy);
}

sub mouseRotate {
    my ($zinc) = @_;
    my $ev = $zinc->XEvent();
    my $langle = atan2($ev->y, $ev->x);
    $zinc->rotate($top_group, -($langle - $cur_angle));
    $cur_angle = $langle;
}

sub release {
    my ($zinc) = @_;
    $zinc->Tk::bind('<Motion>', '');
}


sub displayVersion {
    print $0, " : Version $VERSION\n\tSVG2zinc.pm Version : $SVG2zinc::VERSION\n";
    exit;
}

