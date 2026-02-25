/*
   Implementation of string functions using array notation.
   See str.h for details.
*/

#include <stddef.h>
#include <assert.h>

size_t Str_getLength(const char pcSrc[])
{
   size_t uLength = 0;

   assert(pcSrc != NULL);

   while (pcSrc[uLength] != '\0')
      uLength++;

   return uLength;
}

char *Str_copy(char pcDest[], const char pcSrc[])
{
   size_t uLength;
   size_t i;

   assert(pcSrc != NULL);
   assert(pcDest != NULL);

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

   assert(pcSrc != NULL);
   assert(pcDest != NULL);

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

   assert(pcS1 != NULL);
   assert(pcS2 != NULL);

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

   assert(pcHaystack != NULL);
   assert(pcNeedle != NULL);

   /* Empty needle matches at start (like strstr). */
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

   return NULL;
}