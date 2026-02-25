# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"





# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 7 "stra.c" 2
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



# 8 "stra.c" 2



# 10 "stra.c"
size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;

   
# 14 "stra.c" 3 4
  ((
# 14 "stra.c"
  pcSrc != 
# 14 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 14 "stra.c"
  "pcSrc != NULL"
# 14 "stra.c" 3 4
  , "stra.c", 14, __extension__ __PRETTY_FUNCTION__))
# 14 "stra.c"
                       ;

   while (pcSrc[uLength] != '\0')
      uLength++;

   return uLength;
}


char *Str_copy(char pcDest[], const char pcSrc[])
{
   size_t uLength;
   size_t i;

   
# 28 "stra.c" 3 4
  ((
# 28 "stra.c"
  pcSrc != 
# 28 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 28 "stra.c"
  "pcSrc != NULL"
# 28 "stra.c" 3 4
  , "stra.c", 28, __extension__ __PRETTY_FUNCTION__))
# 28 "stra.c"
                       ;
   
# 29 "stra.c" 3 4
  ((
# 29 "stra.c"
  pcDest != 
# 29 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 29 "stra.c"
  "pcDest != NULL"
# 29 "stra.c" 3 4
  , "stra.c", 29, __extension__ __PRETTY_FUNCTION__))
# 29 "stra.c"
                        ;

   uLength = Str_getLength(pcSrc);

   for (i = 0; i < uLength; i++)
      pcDest[i] = pcSrc[i];

   pcDest[uLength] = '\0';
   return pcDest;
}


char *Str_concat(char pcDest[], const char pcSrc[])
{
   size_t vLength;
   size_t wLength;
   size_t uLength;
   size_t i;

   
# 48 "stra.c" 3 4
  ((
# 48 "stra.c"
  pcSrc != 
# 48 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 48 "stra.c"
  "pcSrc != NULL"
# 48 "stra.c" 3 4
  , "stra.c", 48, __extension__ __PRETTY_FUNCTION__))
# 48 "stra.c"
                       ;
   
# 49 "stra.c" 3 4
  ((
# 49 "stra.c"
  pcDest != 
# 49 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 49 "stra.c"
  "pcDest != NULL"
# 49 "stra.c" 3 4
  , "stra.c", 49, __extension__ __PRETTY_FUNCTION__))
# 49 "stra.c"
                        ;

   vLength = Str_getLength(pcDest);
   wLength = Str_getLength(pcSrc);
   uLength = vLength + wLength;

   for (i = 0; i < wLength; i++)
      pcDest[vLength + i] = pcSrc[i];

   pcDest[uLength] = '\0';
   return pcDest;
}


int Str_compare(const char pcS1[], const char pcS2[])
{
   size_t i = 0;

   
# 67 "stra.c" 3 4
  ((
# 67 "stra.c"
  pcS1 != 
# 67 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 67 "stra.c"
  "pcS1 != NULL"
# 67 "stra.c" 3 4
  , "stra.c", 67, __extension__ __PRETTY_FUNCTION__))
# 67 "stra.c"
                      ;
   
# 68 "stra.c" 3 4
  ((
# 68 "stra.c"
  pcS2 != 
# 68 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 68 "stra.c"
  "pcS2 != NULL"
# 68 "stra.c" 3 4
  , "stra.c", 68, __extension__ __PRETTY_FUNCTION__))
# 68 "stra.c"
                      ;

   while (pcS1[i] != '\0' && pcS2[i] != '\0')
   {
      if (pcS1[i] < pcS2[i])
         return -1;
      else if (pcS1[i] > pcS2[i])
         return 1;

      i++;
   }

   if (pcS1[i] == '\0' && pcS2[i] == '\0')
      return 0;
   else if (pcS1[i] == '\0')
      return -1;
   else
      return 1;
}


char *Str_search(const char pcHaystack[], const char pcNeedle[])
{
   size_t i;
   size_t j;

   
# 94 "stra.c" 3 4
  ((
# 94 "stra.c"
  pcHaystack != 
# 94 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 94 "stra.c"
  "pcHaystack != NULL"
# 94 "stra.c" 3 4
  , "stra.c", 94, __extension__ __PRETTY_FUNCTION__))
# 94 "stra.c"
                            ;
   
# 95 "stra.c" 3 4
  ((
# 95 "stra.c"
  pcNeedle != 
# 95 "stra.c" 3 4
  ((void *)0)) ? (void) (0) : __assert_fail (
# 95 "stra.c"
  "pcNeedle != NULL"
# 95 "stra.c" 3 4
  , "stra.c", 95, __extension__ __PRETTY_FUNCTION__))
# 95 "stra.c"
                          ;

   if (pcNeedle[0] == '\0')
      return (char *)pcHaystack;

   for (i = 0; pcHaystack[i] != '\0'; i++)
   {
      for (j = 0;
           pcNeedle[j] != '\0' && pcHaystack[i + j] != '\0';
           j++)
      {
         if (pcHaystack[i + j] != pcNeedle[j])
            break;
      }

      if (pcNeedle[j] == '\0')
         return (char *)&pcHaystack[i];
   }

   return 
# 114 "stra.c" 3 4
         ((void *)0)
# 114 "stra.c"
             ;
}
