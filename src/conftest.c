/* confdefs.h */
#define PACKAGE_NAME ""
#define PACKAGE_TARNAME ""
#define PACKAGE_VERSION ""
#define PACKAGE_STRING ""
#define PACKAGE_BUGREPORT ""
#define PACKAGE_URL ""
#define UNIX 1
#define STDC_HEADERS 1
#define HAVE_UNSIGNED_LONG_LONG_INT 1
#define HAVE_LONG_LONG_INT 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STRINGS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_UNISTD_H 1
#define FEAT_HUGE 1
#define USE_XSMP_INTERACT 1
#define X_DISPLAY_MISSING 1
#define PROC_EXE_LINK "/proc/self/exe"
#define HAVE_DATE_TIME 1
#define HAVE_ATTRIBUTE_UNUSED 1
#define HAVE_DIRENT_H 1
#define HAVE_STDINT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_TERMCAP_H 1
#define HAVE_FCNTL_H 1
#define HAVE_SYS_TIME_H 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_ICONV_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_MATH_H 1
#define HAVE_UNISTD_H 1
#define HAVE_ERRNO_H 1
#define HAVE_LOCALE_H 1
#define HAVE_UTIME_H 1
#define HAVE_SYS_PARAM_H 1
#define HAVE_LIBGEN_H 1
#define HAVE_WCHAR_H 1
#define HAVE_WCTYPE_H 1
#define HAVE_STRINGS_H 1
#define uid_t int
#define gid_t int
#define TIME_WITH_SYS_TIME 1
#define rlim_t unsigned long
#define stack_t struct sigaltstack
#define HAVE_LIBTERMCAP 1
/* end confdefs.h.  */
int tgetent(char *, const char *);
int
main ()
{
char s[10000]; int res = tgetent(s, "thisterminaldoesnotexist");
  ;
  return 0;
}