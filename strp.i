# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"




# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 6 "strp.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 7 "strp.c" 2



# 9 "strp.c"
size_t Str_getLength(const char pcSrc[])
{
   const char *pc;
   
# 12 "strp.c" 3 4
  ((
# 12 "strp.c"
  pcSrc != 
# 12 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 12 "strp.c"
  "pcSrc != NULL"
# 12 "strp.c" 3 4
  , "strp.c", 12, __extension__ __PRETTY_FUNCTION__))
# 12 "strp.c"
                       ;
   pc = pcSrc;
   while (*pc != '\0')
      pc++;
   return (size_t)(pc - pcSrc);
}


char *Str_copy(char *pcDest, const char *pcSrc)
{
   char *pcRtrn;
   
# 23 "strp.c" 3 4
  ((
# 23 "strp.c"
  pcSrc != 
# 23 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 23 "strp.c"
  "pcSrc != NULL"
# 23 "strp.c" 3 4
  , "strp.c", 23, __extension__ __PRETTY_FUNCTION__))
# 23 "strp.c"
                       ;
   
# 24 "strp.c" 3 4
  ((
# 24 "strp.c"
  pcDest != 
# 24 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 24 "strp.c"
  "pcDest != NULL"
# 24 "strp.c" 3 4
  , "strp.c", 24, __extension__ __PRETTY_FUNCTION__))
# 24 "strp.c"
                        ;
   pcRtrn = pcDest;
   while (*pcSrc != '\0')
      *pcDest++ = *pcSrc++;
   *pcDest = '\0';
   return pcRtrn;
}


char *Str_concat(char pcDest[], const char pcSrc[])
{
   char *pcRtrn;
   
# 36 "strp.c" 3 4
  ((
# 36 "strp.c"
  pcSrc != 
# 36 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 36 "strp.c"
  "pcSrc != NULL"
# 36 "strp.c" 3 4
  , "strp.c", 36, __extension__ __PRETTY_FUNCTION__))
# 36 "strp.c"
                       ;
   
# 37 "strp.c" 3 4
  ((
# 37 "strp.c"
  pcDest != 
# 37 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 37 "strp.c"
  "pcDest != NULL"
# 37 "strp.c" 3 4
  , "strp.c", 37, __extension__ __PRETTY_FUNCTION__))
# 37 "strp.c"
                        ;
   pcRtrn = pcDest;
   while (*pcDest != '\0')
      pcDest++;
   while (*pcSrc != '\0')
      *pcDest++ = *pcSrc++;
   *pcDest = '\0';
   return pcRtrn;
}


int Str_compare(const char pcS1[], const char pcS2[])
{
   
# 50 "strp.c" 3 4
  ((
# 50 "strp.c"
  pcS1 != 
# 50 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 50 "strp.c"
  "pcS1 != NULL"
# 50 "strp.c" 3 4
  , "strp.c", 50, __extension__ __PRETTY_FUNCTION__))
# 50 "strp.c"
                      ;
   
# 51 "strp.c" 3 4
  ((
# 51 "strp.c"
  pcS2 != 
# 51 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 51 "strp.c"
  "pcS2 != NULL"
# 51 "strp.c" 3 4
  , "strp.c", 51, __extension__ __PRETTY_FUNCTION__))
# 51 "strp.c"
                      ;
   while (*pcS1 != '\0' && *pcS2 != '\0')
   {
      if (*pcS1 < *pcS2)
         return -1;
      else if (*pcS1 > *pcS2)
         return 1;
      pcS1++;
      pcS2++;
   }
   if (*pcS1 == '\0' && *pcS2 == '\0')
      return 0;
   else if (*pcS1 == '\0')
      return -1;
   else
      return 1;
}


char *Str_search(const char pcHaystack[], const char pcNeedle[])
{
   const char *start;
   const char *haystack;
   const char *needle;

   
# 76 "strp.c" 3 4
  ((
# 76 "strp.c"
  pcHaystack != 
# 76 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 76 "strp.c"
  "pcHaystack != NULL"
# 76 "strp.c" 3 4
  , "strp.c", 76, __extension__ __PRETTY_FUNCTION__))
# 76 "strp.c"
                            ;
   
# 77 "strp.c" 3 4
  ((
# 77 "strp.c"
  pcNeedle != 
# 77 "strp.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 77 "strp.c"
  "pcNeedle != NULL"
# 77 "strp.c" 3 4
  , "strp.c", 77, __extension__ __PRETTY_FUNCTION__))
# 77 "strp.c"
                          ;

   if (*pcNeedle == '\0')
      return (char *)pcHaystack;

   for (start = pcHaystack; *start != '\0'; start++)
   {
      haystack = start;
      needle = pcNeedle;

      while (*haystack != '\0' && *needle != '\0' && *haystack == *needle)
      {
         haystack++;
         needle++;
      }

      if (*needle == '\0')
         return (char *)start;
   }

   return 
# 97 "strp.c" 3 4
         ((void *)0)
# 97 "strp.c"
             ;
}
