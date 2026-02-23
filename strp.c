
#include <stddef.h>
#include <assert.h>

size_t Str_getLength(const char pcSrc[])
{
   const char *pc;
   assert(pcSrc != NULL);
   pc = pcSrc;
   while (*pc != '\0')
      pc++;
   return (size_t)(pc - pcSrc);
}

char *Str_copy(char *pcDest, const char *pcSrc)
{
   char *pcRtrn;
   assert(pcSrc != NULL);
   assert(pcDest != NULL);
   pcRtrn = pcDest;
   while (*pcSrc != '\0')
      *pcDest++ = *pcSrc++;
   *pcDest = '\0';
   return pcRtrn;
}

char *Str_concat(char pcDest[], const char pcSrc[])
{
   char *pcRtrn;
   assert(pcSrc != NULL);
   assert(pcDest != NULL);
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
   assert(pcS1 != NULL);
   assert(pcS2 != NULL);
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
   const char *h;
   const char *n;

   assert(pcHaystack != NULL);
   assert(pcNeedle != NULL);

   if (*pcNeedle == '\0')
      return (char *)pcHaystack;

   for (start = pcHaystack; *start != '\0'; start++)
   {
      h = start;
      n = pcNeedle;

      while (*h != '\0' && *n != '\0' && *h == *n)
      {
         h++;
         n++;
      }

      if (*n == '\0')
         return (char *)start;
   }

   return NULL;
}