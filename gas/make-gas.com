$! Set the def dir to proper place for use in batch. Works for interactive to.
$flnm = f$enviroment("PROCEDURE")     ! get current procedure name
$set default 'f$parse(flnm,,,"DEVICE")''f$parse(flnm,,,"DIRECTORY")'
$!
$!	Command file to build a GNU assembler on VMS
$!
$!	If you are using a version of GCC that supports global constants
$!	you should remove the define="const=" from the gcc lines.
$!
$!	Caution:  Versions 1.38.1 and earlier had a bug in the handling of
$!	some static constants. If you are using such a version of the
$!	assembler, and you wish to compile without the "const=" hack,
$!	you should first build this version *with* the "const="
$!	definition, and then use that assembler to rebuild it without the
$!	"const=" definition.  Failure to do this will result in an assembler
$!	that will mung floating point constants.
$!
$!	Note: The version of gas shipped on the GCC VMS tapes has been patched
$!	to fix the above mentioned bug.
$!
$	!The gcc-vms driver was modified to use `-1' quite some time ago,
$	!so don't echo this text any more...
$ !write sys$output "If this assembler is going to be used with GCC 1.n, you"
$ !write sys$output "need to modify the driver to supply the -1 switch to gas."
$ !write sys$output "This is required because of a small change in how global"
$ !write sys$output "constant variables are handled.  Failure to include this"
$ !write sys$output "will result in linker warning messages about mismatched
$ !write sys$output "psect attributes."
$!
$ C_DEFS :="""VMS"""
$! C_DEFS :="""VMS""","""const="""
$ C_INCLUDES :=/include=([],[.config],[-.include],[-.include.aout])
$ C_FLAGS := /debug 'c_includes'
$!
$!
$ if "''p1'" .eqs. "LINK" then goto Link
$!
$!  This helps gcc 1.nn find the aout/* files.
$!
$ aout_dev = f$parse(flnm,,,"DEVICE")
$ tmp = aout_dev - ":"
$if f$trnlnm(tmp).nes."" then aout_dev = f$trnlnm(tmp)
$ aout_dir = aout_dev+f$parse(flnm,,,"DIRECTORY")' -
	- "GAS]" + "INCLUDE.AOUT.]" - "]["
$assign 'aout_dir' aout/tran=conc
$ opcode_dir = aout_dev+f$parse(flnm,,,"DIRECTORY")' -
	- "GAS]" + "INCLUDE.OPCODE.]" - "]["
$assign 'opcode_dir' opcode/tran=conc
$!
$ gcc 'c_flags'/define=('C_DEFS') targ-cpu.c
$ gcc 'c_flags'/define=('C_DEFS') obj-format.c
$ gcc 'c_flags'/define=('C_DEFS') atof-targ.c
$ gcc 'c_flags'/define=('C_DEFS') app.c
$ gcc 'c_flags'/define=('C_DEFS') as.c
$ gcc 'c_flags'/define=('C_DEFS') atof-generic.c
$ gcc 'c_flags'/define=('C_DEFS') bignum-copy.c
$ gcc 'c_flags'/define=('C_DEFS') cond.c
$ gcc 'c_flags'/define=('C_DEFS') expr.c
$ gcc 'c_flags'/define=('C_DEFS') flonum-konst.c
$ gcc 'c_flags'/define=('C_DEFS') flonum-copy.c
$ gcc 'c_flags'/define=('C_DEFS') flonum-mult.c
$ gcc 'c_flags'/define=('C_DEFS') frags.c
$ gcc 'c_flags'/define=('C_DEFS') hash.c
$ gcc 'c_flags'/define=('C_DEFS') hex-value.c
$ gcc 'c_flags'/define=('C_DEFS') input-file.c
$ gcc 'c_flags'/define=('C_DEFS') input-scrub.c
$ gcc 'c_flags'/define=('C_DEFS') literal.c
$ gcc 'c_flags'/define=('C_DEFS') messages.c
$ gcc 'c_flags'/define=('C_DEFS') output-file.c
$ gcc 'c_flags'/define=('C_DEFS') read.c
$ gcc 'c_flags'/define=('C_DEFS') subsegs.c
$ gcc 'c_flags'/define=('C_DEFS') symbols.c
$ gcc 'c_flags'/define=('C_DEFS') write.c
$ gcc 'c_flags'/define=('C_DEFS') listing.c
$ gcc 'c_flags'/define=('C_DEFS') ecoff.c
$ gcc 'c_flags'/define=('C_DEFS') stabs.c
$ gcc 'c_flags'/define=('C_DEFS') xmalloc.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]obstack.obj [-.libiberty]obstack.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]strdup.obj [-.libiberty]strdup.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]strncasecmp.obj [-.libiberty]strncasecmp.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]concat.obj [-.libiberty]concat.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]getopt.obj [-.libiberty]getopt.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]getopt1.obj [-.libiberty]getopt1.c
$ gcc 'c_flags'/define=('C_DEFS')/object=[]getruntime.obj [-.libiberty]getruntime.c
$link:
$ link/nomap/exec=gcc-as version.opt/opt+sys$input:/opt
!
!	Linker options file for GNU assembler
!
targ-cpu.obj,-
obj-format.obj,-
atof-targ.obj,-
app.obj,-
as.obj,-
atof-generic.obj,-
bignum-copy.obj,-
cond.obj,-
expr.obj,-
flonum-konst.obj,-
flonum-copy.obj,-
flonum-mult.obj,-
frags.obj,-
hash.obj,-
hex-value.obj,-
input-file.obj,-
input-scrub.obj,-
literal.obj,-
messages.obj,-
output-file.obj,-
read.obj,-
subsegs.obj,-
symbols.obj,-
write.obj,-
listing.obj,-
ecoff.obj,-
stabs.obj,-
xmalloc.obj,-
obstack.obj,-
strdup.obj,-
strncasecmp.obj,-
concat.obj,-
getopt.obj,-
getopt1.obj,-
getruntime.obj,-
gnu_cc:[000000]gcclib/lib,sys$share:vaxcrtl/lib
! Tell linker exactly what psect attributes we want -- match VAXCRTL.
psect_attr=ENVIRON,long,pic,ovr,rel,gbl,noshr,noexe,rd,wrt
