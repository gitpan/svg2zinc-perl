#!/usr/bin/perl

# this script build the tk-zinc-n.mmm.tar.gz file which must then
# be uploaded on the CPAN on CMERTZ account

# this version mus be the same than those in the CVS repository
# param = 0.06 => cpan_0_06 as a CVS tag
my $version;
if (@ARGV eq 1) {
    $version = $ARGV[0];
} else {
    die "$0 requires one param: the SVG2zinc version (eg 0.06)";
}
chdir ('/tmp');

my $cvstag = 'cpan_' . $version;
$cvstag =~ s/\./_/ ;

my $dirname = "svg-svg2zinc-$version";

system ("rm -rf $dirname");

my $command = "cvs -d /projet/toccata/cvsroot export -r $cvstag -d $dirname svg2zinc";
print "cvs: $command\n";
system ($command) ;

chdir ("/tmp/$dirname");

use ExtUtils::MakeMaker;

my $ver =  MM->parse_version("SVG2zinc.pm");
die "version in $0 and SVG2zinc.pm must be identical" unless $ver == $version ;


system ('cp -p debian/changelog Changes');
system ('cp -p debian/copyright Copyright');

# removing directories not to be distributed
system ('rm -rf trials debian redhat');

## the CPAN-isation-svg2zinc.pl script is not supposed to be distributed
system ('rm -f CPAN-isation-svg2zinc.pl');

# removing the .cvsignore files
system ('find . -name .cvsignore | xargs rm -f');

use ExtUtils::Manifest qw( mkmanifest );
$ExtUtils::Manifest::Quiet = 1;
&mkmanifest();

# and finally creating the tar file, ready to upload
chdir ("/tmp");
system ("tar cfz $dirname.tar.gz $dirname");

