use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile
    ('ABSTRACT'     => 'display or convert svg files in modules, script, or images',
     'AUTHOR'       => 'Christophe Mertz <mertz@cena.fr>',
     'NAME'	    => 'SVG::SVG2zinc',
     'VERSION_FROM' => 'SVG2zinc.pm', # finds $VERSION
     'PREREQ_PM'    => {
	 'XML::Parser' => 2.30,
	 'Tk::PNG'     => 2.005,
	 'Tk::JPEG'    => 2.014,
	 'Tk::Zinc'    => 3.295,
     },

     'PMLIBDIRS' => [ qw( SVG2zinc lib ) ],
     'EXE_FILES' => [ 'svg2zinc.pl', 'testGeneratedPerlClasses.pl' ],
);
