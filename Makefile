# This Makefile is for the SVG::SVG2zinc extension to perl.
#
# It was generated automatically by MakeMaker version
# 5.45 (Revision: 1.222) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: (q[INSTALLDIRS=vendor], q[FULLPERL=PERL_DL_NONLAZY=0 /usr/bin/perl])
#
#   MakeMaker Parameters:

#	ABSTRACT => q[display or convert svg files in modules, script, or images]
#	AUTHOR => q[Christophe Mertz <mertz@cena.fr>]
#	EXE_FILES => [q[svg2zinc.pl], q[testGeneratedPerlClasses.pl]]
#	NAME => q[SVG::SVG2zinc]
#	PMLIBDIRS => [q[SVG2zinc], q[lib]]
#	PREREQ_PM => { Tk::Zinc=>q[3.295], Tk::PNG=>q[2.005], XML::Parser=>q[2.3], Tk::JPEG=>q[2.014] }
#	VERSION_FROM => q[SVG2zinc.pm]

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib/perl/5.6.1/Config.pm)

# They may have been overridden via Makefile.PL or on the command line
AR = ar
CC = cc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -rdynamic
DLEXT = so
DLSRC = dl_dlopen.xs
LD = cc
LDDLFLAGS = -shared -L/usr/local/lib
LDFLAGS =  -L/usr/local/lib
LIBC = /lib/libc-2.2.5.so
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.4.20-7um
RANLIB = :
SO = so
EXE_EXT = 
FULL_AR = /usr/bin/ar


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
NAME = SVG::SVG2zinc
DISTNAME = SVG-SVG2zinc
NAME_SYM = SVG_SVG2zinc
VERSION = 0.09
VERSION_SYM = 0_09
XS_VERSION = 0.09
INST_BIN = blib/bin
INST_EXE = blib/script
INST_LIB = blib/lib
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
PREFIX = /usr
SITEPREFIX = $(PREFIX)/local
INSTALLDIRS = vendor
INSTALLPRIVLIB = $(PREFIX)/share/perl/5.6.1
INSTALLARCHLIB = $(PREFIX)/lib/perl/5.6.1
INSTALLSITELIB = $(SITEPREFIX)/share/perl/5.6.1
INSTALLSITEARCH = $(SITEPREFIX)/lib/perl/5.6.1
INSTALLVENDORLIB = $(PREFIX)/share/perl5
INSTALLVENDORARCH = $(PREFIX)/lib/perl5
INSTALLBIN = $(PREFIX)/bin
INSTALLSCRIPT = $(PREFIX)/bin
INSTALLSITEBIN = $(SITEPREFIX)/bin
PERL_LIB = /usr/share/perl/5.6.1
PERL_ARCHLIB = /usr/lib/perl/5.6.1
SITELIBEXP = /usr/local/share/perl/5.6.1
SITEARCHEXP = /usr/local/lib/perl/5.6.1
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib/perl/5.6.1/CORE
PERL = /usr/bin/perl
FULLPERL = PERL_DL_NONLAZY=0 /usr/bin/perl
FULL_AR = /usr/bin/ar

VERSION_MACRO = VERSION
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc

MAKEMAKER = /usr/share/perl/5.6.1/ExtUtils/MakeMaker.pm
MM_VERSION = 5.45

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# ROOTEXT = Directory part of FULLEXT with leading slash (eg /DBD)  !!! Deprecated from MM 5.32  !!!
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = SVG/SVG2zinc
BASEEXT = SVG2zinc
PARENT_NAME = SVG
DLBASE = $(BASEEXT)
VERSION_FROM = SVG2zinc.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic

# Handy lists of source code files:
XS_FILES= 
C_FILES = 
O_FILES = 
H_FILES = 
HTMLLIBPODS    = 
HTMLSCRIPTPODS = 
MAN1PODS = svg2zinc.pl \
	testGeneratedPerlClasses.pl
MAN3PODS = SVG2zinc.pm \
	SVG2zinc/Backend.pm \
	SVG2zinc/Backend/Display.pm \
	SVG2zinc/Backend/Image.pm \
	SVG2zinc/Backend/PerlScript.pm \
	SVG2zinc/Backend/TclScript.pm \
	lib/Math/Bezier/Convert.pm \
	svg2zinc.pl \
	testGeneratedPerlClasses.pl
HTMLEXT = html
INST_MAN1DIR = blib/man1
INSTALLMAN1DIR = $(PREFIX)/share/man/man1
INSTALLSITEMAN1DIR = $(SITEPREFIX)/man/man1
MAN1EXT = 1p
INST_MAN3DIR = blib/man3
INSTALLMAN3DIR = $(PREFIX)/share/man/man3
INSTALLSITEMAN3DIR = $(SITEPREFIX)/man/man3
MAN3EXT = 3pm
PERM_RW = 644
PERM_RWX = 755

# work around a famous dec-osf make(1) feature(?):
makemakerdflt: all

.SUFFIXES: .xs .c .C .cpp .cxx .cc $(OBJ_EXT)

# Nick wanted to get rid of .PRECIOUS. I don't remember why. I seem to recall, that
# some make implementations will delete the Makefile when we rebuild it. Because
# we call false(1) when we rebuild it. So make(1) is not completely wrong when it
# does so. Our milage may vary.
# .PRECIOUS: Makefile    # seems to be not necessary anymore

.PHONY: all config static dynamic test linkext manifest

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)/Config.pm $(PERL_INC)/config.h

# Where to put things:
INST_LIBDIR      = $(INST_LIB)/SVG
INST_ARCHLIBDIR  = $(INST_ARCHLIB)/SVG

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC  =
INST_DYNAMIC =
INST_BOOT    =

EXPORT_LIST = 

PERL_ARCHIVE = 

PERL_ARCHIVE_AFTER = 

TO_INST_PM = CPAN-isation-svg2zinc.pl \
	SVG2zinc.pm \
	SVG2zinc/Backend.pm \
	SVG2zinc/Backend/Display.pm \
	SVG2zinc/Backend/Image.pm \
	SVG2zinc/Backend/PerlClass.pm \
	SVG2zinc/Backend/PerlScript.pm \
	SVG2zinc/Backend/Print.pm \
	SVG2zinc/Backend/Tcl.pm \
	SVG2zinc/Backend/TclScript.pm \
	SVG2zinc/Conversions.pm \
	lib/Math/Bezier/Convert.pm \
	lib/Tk/Zinc/SVGExtension.pm \
	svg2zinc.pl \
	testGeneratedPerlClasses.pl

PM_TO_BLIB = SVG2zinc/Backend/Tcl.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/Tcl.pm \
	testGeneratedPerlClasses.pl \
	$(INST_LIBDIR)/testGeneratedPerlClasses.pl \
	SVG2zinc.pm \
	$(INST_LIBDIR)/SVG2zinc.pm \
	SVG2zinc/Backend.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend.pm \
	SVG2zinc/Backend/Print.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/Print.pm \
	svg2zinc.pl \
	$(INST_LIBDIR)/svg2zinc.pl \
	SVG2zinc/Backend/TclScript.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/TclScript.pm \
	SVG2zinc/Backend/PerlScript.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/PerlScript.pm \
	SVG2zinc/Backend/Image.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/Image.pm \
	SVG2zinc/Backend/PerlClass.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/PerlClass.pm \
	SVG2zinc/Backend/Display.pm \
	$(INST_LIBDIR)/SVG2zinc/Backend/Display.pm \
	lib/Math/Bezier/Convert.pm \
	$(INST_LIB)/Math/Bezier/Convert.pm \
	CPAN-isation-svg2zinc.pl \
	$(INST_LIBDIR)/CPAN-isation-svg2zinc.pl \
	lib/Tk/Zinc/SVGExtension.pm \
	$(INST_LIB)/Tk/Zinc/SVGExtension.pm \
	SVG2zinc/Conversions.pm \
	$(INST_LIBDIR)/SVG2zinc/Conversions.pm


# --- MakeMaker tool_autosplit section:

# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -e 'use AutoSplit;autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1) ;'


# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:

SHELL = /bin/sh
CHMOD = chmod
CP = cp
LD = cc
MV = mv
NOOP = $(SHELL) -c true
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1

# The following is a portable way to say mkdir -p
# To see which directories are created, change the if 0 to if 1
MKPATH = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e mkpath

# This helps us to minimize the effect of the .exists files A yet
# better solution would be to have a stable file in the perl
# distribution with a timestamp of zero. But this solution doesn't
# need any changes to the core distribution and works with older perls
EQUALIZE_TIMESTAMP = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Command -e eqtime

# Here we warn users that an old packlist file was found somewhere,
# and that they should call some uninstall routine
WARN_IF_OLD_PACKLIST = $(PERL) -we 'exit unless -f $$ARGV[0];' \
-e 'print "WARNING: I have found an old package in\n";' \
-e 'print "\t$$ARGV[0].\n";' \
-e 'print "Please make sure the two installations are not conflicting\n";'

UNINST=0
VERBINST=0

MOD_INSTALL = $(PERL) -I$(INST_LIB) -I$(PERL_LIB) -MExtUtils::Install \
-e "install({@ARGV},'$(VERBINST)',0,'$(UNINST)');"

DOC_INSTALL = $(PERL) -e '$$\="\n\n";' \
-e 'print "=head2 ", scalar(localtime), ": C<", shift, ">", " L<", $$arg=shift, "|", $$arg, ">";' \
-e 'print "=over 4";' \
-e 'while (defined($$key = shift) and defined($$val = shift)){print "=item *";print "C<$$key: $$val>";}' \
-e 'print "=back";'

UNINSTALL =   $(PERL) -MExtUtils::Install \
-e 'uninstall($$ARGV[0],1,1); print "\nUninstall is deprecated. Please check the";' \
-e 'print " packlist above carefully.\n  There may be errors. Remove the";' \
-e 'print " appropriate files manually.\n  Sorry for the inconveniences.\n"'


# --- MakeMaker dist section:

DISTVNAME = $(DISTNAME)-$(VERSION)
TAR  = tar
TARFLAGS = cvf
ZIP  = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = @$(NOOP)
POSTOP = @$(NOOP)
TO_UNIX = @$(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIB="$(LIB)"\
	LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"\
	OPTIMIZE="$(OPTIMIZE)"


# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:

#all ::	config $(INST_PM) subdirs linkext manifypods

all :: pure_all htmlifypods manifypods
	@$(NOOP)

pure_all :: config pm_to_blib subdirs linkext
	@$(NOOP)

subdirs :: $(MYEXTLIB)
	@$(NOOP)

config :: Makefile $(INST_LIBDIR)/.exists
	@$(NOOP)

config :: $(INST_ARCHAUTODIR)/.exists
	@$(NOOP)

config :: $(INST_AUTODIR)/.exists
	@$(NOOP)

$(INST_AUTODIR)/.exists :: /usr/lib/perl/5.6.1/CORE/perl.h
	@$(MKPATH) $(INST_AUTODIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl/5.6.1/CORE/perl.h $(INST_AUTODIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_AUTODIR)

$(INST_LIBDIR)/.exists :: /usr/lib/perl/5.6.1/CORE/perl.h
	@$(MKPATH) $(INST_LIBDIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl/5.6.1/CORE/perl.h $(INST_LIBDIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_LIBDIR)

$(INST_ARCHAUTODIR)/.exists :: /usr/lib/perl/5.6.1/CORE/perl.h
	@$(MKPATH) $(INST_ARCHAUTODIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl/5.6.1/CORE/perl.h $(INST_ARCHAUTODIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_ARCHAUTODIR)

config :: $(INST_MAN1DIR)/.exists
	@$(NOOP)


$(INST_MAN1DIR)/.exists :: /usr/lib/perl/5.6.1/CORE/perl.h
	@$(MKPATH) $(INST_MAN1DIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl/5.6.1/CORE/perl.h $(INST_MAN1DIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_MAN1DIR)

config :: $(INST_MAN3DIR)/.exists
	@$(NOOP)


$(INST_MAN3DIR)/.exists :: /usr/lib/perl/5.6.1/CORE/perl.h
	@$(MKPATH) $(INST_MAN3DIR)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl/5.6.1/CORE/perl.h $(INST_MAN3DIR)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_MAN3DIR)

help:
	perldoc ExtUtils::MakeMaker

Version_check:
	@$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) \
		-MExtUtils::MakeMaker=Version_check \
		-e "Version_check('$(MM_VERSION)')"


# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	@$(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make dynamic"
#dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT) $(INST_PM)
dynamic :: Makefile $(INST_DYNAMIC) $(INST_BOOT)
	@$(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
#static :: Makefile $(INST_STATIC) $(INST_PM)
static :: Makefile $(INST_STATIC)
	@$(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker htmlifypods section:

htmlifypods : pure_all
	@$(NOOP)


# --- MakeMaker manifypods section:
POD2MAN_EXE = /usr/bin/pod2man
POD2MAN = $(PERL) -we '%m=@ARGV;for (keys %m){' \
-e 'next if -e $$m{$$_} && -M $$m{$$_} < -M $$_ && -M $$m{$$_} < -M "Makefile";' \
-e 'print "Manifying $$m{$$_}\n";' \
-e 'system(qq[$$^X ].q["-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" $(POD2MAN_EXE) ].qq[$$_>$$m{$$_}])==0 or warn "Couldn\047t install $$m{$$_}\n";' \
-e 'chmod(oct($(PERM_RW))), $$m{$$_} or warn "chmod $(PERM_RW) $$m{$$_}: $$!\n";}'

manifypods : pure_all testGeneratedPerlClasses.pl \
	svg2zinc.pl \
	testGeneratedPerlClasses.pl \
	SVG2zinc.pm \
	SVG2zinc/Backend.pm \
	svg2zinc.pl \
	SVG2zinc/Backend/TclScript.pm \
	SVG2zinc/Backend/PerlScript.pm \
	SVG2zinc/Backend/Image.pm \
	SVG2zinc/Backend/Display.pm \
	lib/Math/Bezier/Convert.pm
	@$(POD2MAN) \
	testGeneratedPerlClasses.pl \
	$(INST_MAN1DIR)/testGeneratedPerlClasses.pl.$(MAN1EXT) \
	svg2zinc.pl \
	$(INST_MAN1DIR)/svg2zinc.pl.$(MAN1EXT) \
	testGeneratedPerlClasses.pl \
	$(INST_MAN3DIR)/SVG::testGeneratedPerlClasses.$(MAN3EXT) \
	SVG2zinc.pm \
	$(INST_MAN3DIR)/SVG::SVG2zinc.$(MAN3EXT) \
	SVG2zinc/Backend.pm \
	$(INST_MAN3DIR)/SVG::SVG2zinc::Backend.$(MAN3EXT) \
	svg2zinc.pl \
	$(INST_MAN3DIR)/SVG::svg2zinc.$(MAN3EXT) \
	SVG2zinc/Backend/TclScript.pm \
	$(INST_MAN3DIR)/SVG::SVG2zinc::Backend::TclScript.$(MAN3EXT) \
	SVG2zinc/Backend/PerlScript.pm \
	$(INST_MAN3DIR)/SVG::SVG2zinc::Backend::PerlScript.$(MAN3EXT) \
	SVG2zinc/Backend/Image.pm \
	$(INST_MAN3DIR)/SVG::SVG2zinc::Backend::Image.$(MAN3EXT) \
	SVG2zinc/Backend/Display.pm \
	$(INST_MAN3DIR)/SVG::SVG2zinc::Backend::Display.$(MAN3EXT) \
	lib/Math/Bezier/Convert.pm \
	$(INST_MAN3DIR)/Math::Bezier::Convert.$(MAN3EXT)

# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

$(INST_SCRIPT)/.exists :: /usr/lib/perl/5.6.1/CORE/perl.h
	@$(MKPATH) $(INST_SCRIPT)
	@$(EQUALIZE_TIMESTAMP) /usr/lib/perl/5.6.1/CORE/perl.h $(INST_SCRIPT)/.exists

	-@$(CHMOD) $(PERM_RWX) $(INST_SCRIPT)

EXE_FILES = svg2zinc.pl testGeneratedPerlClasses.pl

FIXIN = $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::MakeMaker \
    -e "MY->fixin(shift)"

pure_all :: $(INST_SCRIPT)/testGeneratedPerlClasses.pl $(INST_SCRIPT)/svg2zinc.pl
	@$(NOOP)

realclean ::
	rm -f $(INST_SCRIPT)/testGeneratedPerlClasses.pl $(INST_SCRIPT)/svg2zinc.pl

$(INST_SCRIPT)/testGeneratedPerlClasses.pl: testGeneratedPerlClasses.pl Makefile $(INST_SCRIPT)/.exists
	@rm -f $(INST_SCRIPT)/testGeneratedPerlClasses.pl
	cp testGeneratedPerlClasses.pl $(INST_SCRIPT)/testGeneratedPerlClasses.pl
	$(FIXIN) $(INST_SCRIPT)/testGeneratedPerlClasses.pl
	-@$(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/testGeneratedPerlClasses.pl

$(INST_SCRIPT)/svg2zinc.pl: svg2zinc.pl Makefile $(INST_SCRIPT)/.exists
	@rm -f $(INST_SCRIPT)/svg2zinc.pl
	cp svg2zinc.pl $(INST_SCRIPT)/svg2zinc.pl
	$(FIXIN) $(INST_SCRIPT)/svg2zinc.pl
	-@$(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/svg2zinc.pl


# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	-rm -rf ./blib $(MAKE_APERL_FILE) $(INST_ARCHAUTODIR)/extralibs.all perlmain.c mon.out core core.*perl.*.? *perl.core so_locations pm_to_blib *$(OBJ_EXT) *$(LIB_EXT) perl.exe $(BOOTSTRAP) $(BASEEXT).bso $(BASEEXT).def $(BASEEXT).exp
	-mv Makefile Makefile.old $(DEV_NULL)


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	rm -rf $(INST_AUTODIR) $(INST_ARCHAUTODIR)
	rm -f  $(INST_LIBDIR)/SVG2zinc/Backend/Tcl.pm
	rm -f $(INST_LIBDIR)/testGeneratedPerlClasses.pl $(INST_LIBDIR)/SVG2zinc.pm
	rm -f $(INST_LIBDIR)/SVG2zinc/Backend.pm $(INST_LIBDIR)/SVG2zinc/Backend/Print.pm
	rm -f $(INST_LIBDIR)/svg2zinc.pl $(INST_LIBDIR)/SVG2zinc/Backend/TclScript.pm
	rm -f $(INST_LIBDIR)/SVG2zinc/Backend/PerlScript.pm
	rm -f $(INST_LIBDIR)/SVG2zinc/Backend/Image.pm
	rm -f $(INST_LIBDIR)/SVG2zinc/Backend/PerlClass.pm
	rm -f $(INST_LIBDIR)/SVG2zinc/Backend/Display.pm $(INST_LIB)/Math/Bezier/Convert.pm
	rm -f $(INST_LIBDIR)/CPAN-isation-svg2zinc.pl $(INST_LIB)/Tk/Zinc/SVGExtension.pm
	rm -f $(INST_LIBDIR)/SVG2zinc/Conversions.pm
	rm -rf Makefile Makefile.old


# --- MakeMaker dist_basics section:

distclean :: realclean distcheck

distcheck :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=fullcheck \
		-e fullcheck

skipcheck :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=skipcheck \
		-e skipcheck

manifest :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=mkmanifest \
		-e mkmanifest

veryclean : realclean
	$(RM_F) *~ *.orig */*~ */*.orig


# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT)
	@$(PERL) -le 'print "Warning: Makefile possibly out of date with $$vf" if ' \
	    -e '-e ($$vf="$(VERSION_FROM)") and -M $$vf < -M "Makefile";'

tardist : $(DISTVNAME).tar$(SUFFIX)

zipdist : $(DISTVNAME).zip

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) \
		$(DISTVNAME).tar$(SUFFIX) > \
		$(DISTVNAME).tar$(SUFFIX)_uu

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker dist_dir section:

distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=manicopy,maniread \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"


# --- MakeMaker dist_test section:

disttest : distdir
	cd $(DISTVNAME) && $(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) Makefile.PL
	cd $(DISTVNAME) && $(MAKE)
	cd $(DISTVNAME) && $(MAKE) test


# --- MakeMaker dist_ci section:

ci :
	$(PERL) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -MExtUtils::Manifest=maniread \
		-e "@all = keys %{ maniread() };" \
		-e 'print("Executing $(CI) @all\n"); system("$(CI) @all");' \
		-e 'print("Executing $(RCS_LABEL) ...\n"); system("$(RCS_LABEL) @all");'


# --- MakeMaker install section:

install :: all pure_install doc_install

install_perl :: all pure_perl_install doc_perl_install

install_site :: all pure_site_install doc_site_install

install_vendor :: all pure_vendor_install doc_vendor_install

install_ :: install_site
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_install :: pure_$(INSTALLDIRS)_install

doc_install :: doc_$(INSTALLDIRS)_install

pure__install : pure_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	@echo INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install ::
	@umask 022; $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(INSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(INSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(INSTALLARCHLIB) \
		$(INST_BIN) $(INSTALLBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_HTMLLIBDIR) $(INSTALLHTMLPRIVLIBDIR) \
		$(INST_HTMLSCRIPTDIR) $(INSTALLHTMLSCRIPTDIR) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install ::
	@umask 02; $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(INSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(INSTALLSITELIB) \
		$(INST_ARCHLIB) $(INSTALLSITEARCH) \
		$(INST_BIN) $(INSTALLSITEBIN) \
		$(INST_SCRIPT) $(INSTALLSITEBIN) \
		$(INST_MAN1DIR) $(INSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLSITEMAN3DIR)
	@$(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)


pure_vendor_install ::
	@umask 022; $(MOD_INSTALL) \
		$(INST_LIB) $(INSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(INSTALLVENDORARCH) \
		$(INST_BIN) $(INSTALLBIN) \
		$(INST_SCRIPT) $(INSTALLSCRIPT) \
		$(INST_MAN1DIR) $(INSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(INSTALLMAN3DIR)

doc_perl_install ::
	@echo Appending installation info to $(INSTALLARCHLIB)/perllocal.pod
	-@umask 022; $(MKPATH) $(INSTALLARCHLIB)
	-@umask 022; $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLARCHLIB)/perllocal.pod

doc_site_install ::
	@echo Appending installation info to $(INSTALLSITEARCH)/perllocal.pod
	-@umask 02; $(MKPATH) $(INSTALLSITEARCH)
	-@umask 02; $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(INSTALLSITEARCH)/perllocal.pod

doc_vendor_install ::


uninstall :: uninstall_from_$(INSTALLDIRS)dirs

uninstall_from_perldirs ::
	@$(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	@$(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE:
	@$(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:

# We take a very conservative approach here, but it\'s worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
Makefile : Makefile.PL $(CONFIGDEP)
	@echo "Makefile out-of-date with respect to $?"
	@echo "Cleaning current config before rebuilding Makefile..."
	-@$(RM_F) Makefile.old
	-@$(MV) Makefile Makefile.old
	-$(MAKE) -f Makefile.old clean $(DEV_NULL) || $(NOOP)
	$(PERL) "-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" Makefile.PL "INSTALLDIRS=vendor" "FULLPERL=PERL_DL_NONLAZY=0 /usr/bin/perl"
	@echo "==> Your Makefile has been rebuilt. <=="
	@echo "==> Please rerun the make command.  <=="
	false

# To change behavior to :: would be nice, but would break Tk b9.02
# so you find such a warning below the dist target.
#Makefile :: $(VERSION_FROM)
#	@echo "Warning: Makefile possibly out of date with $(VERSION_FROM)"


# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = PERL_DL_NONLAZY=0 /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) -f $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE)
	@echo Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	@$(PERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS= \
		INSTALLDIRS=vendor \
		FULLPERL='PERL_DL_NONLAZY=0 /usr/bin/perl'


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/*.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE)

test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERL) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) -e 'use Test::Harness qw(&runtests $$verbose); $$verbose=$(TEST_VERBOSE); runtests @ARGV;' $(TEST_FILES)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERL) $(TESTDB_SW) -I$(INST_ARCHLIB) -I$(INST_LIB) -I$(PERL_ARCHLIB) -I$(PERL_LIB) $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd:
	@$(PERL) -e "print qq{<SOFTPKG NAME=\"SVG-SVG2zinc\" VERSION=\"0,09,0,0\">\n}. qq{\t<TITLE>SVG-SVG2zinc</TITLE>\n}. qq{\t<ABSTRACT>display or convert svg files in modules, script, or images</ABSTRACT>\n}. qq{\t<AUTHOR>Christophe Mertz &lt;mertz\@cena.fr&gt;</AUTHOR>\n}. qq{\t<IMPLEMENTATION>\n}. qq{\t\t<DEPENDENCY NAME=\"Tk-JPEG\" VERSION=\"2,014,0,0\" />\n}. qq{\t\t<DEPENDENCY NAME=\"Tk-PNG\" VERSION=\"2,005,0,0\" />\n}. qq{\t\t<DEPENDENCY NAME=\"Tk-Zinc\" VERSION=\"3,295,0,0\" />\n}. qq{\t\t<DEPENDENCY NAME=\"XML-Parser\" VERSION=\"2,3,0,0\" />\n}. qq{\t\t<OS NAME=\"$(OSNAME)\" />\n}. qq{\t\t<ARCHITECTURE NAME=\"i386-linux\" />\n}. qq{\t\t<CODEBASE HREF=\"\" />\n}. qq{\t</IMPLEMENTATION>\n}. qq{</SOFTPKG>\n}" > SVG-SVG2zinc.ppd

# --- MakeMaker pm_to_blib section:

pm_to_blib: $(TO_INST_PM)
	@$(PERL) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)" \
	"-I$(PERL_ARCHLIB)" "-I$(PERL_LIB)" -MExtUtils::Install \
        -e "pm_to_blib({qw{$(PM_TO_BLIB)}},'$(INST_LIB)/auto','$(PM_FILTER)')"
	@$(TOUCH) $@


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
