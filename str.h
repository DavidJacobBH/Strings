#ifndef STR_H
#define STR_H

#include <stddef.h>   /* size_t */

/*
    Find the length of string pcSrc, not including the trailing '\0'.
    pcSrc must not be NULL.

    Returns the length of pcSrc.
 */
size_t Str_getLength(const char pcSrc[]);

/*
    Copy string (pcSrc) into another (pcDest), including the trailing '\0'.
    pcSrc and pcDest must not be NULL, and pcDest must have enough space to hold
    pcSrc and the trailing '\0'.
    
    Returns pcDest.
 */
char *Str_copy(char pcDest[], const char pcSrc[]);

/*
    Concatenate pcSrc to the end of pcDest, including the trailing '\0'.
    pcDest and pcSrc must not be NULL, and pcDest must have enough space to hold
    the concatenation of its original contents and pcSrc, plus the trailing '\0'.
    
    Returns pcDest.
 */
char *Str_concat(char pcDest[], const char pcSrc[]);

/*
    Compares pcS1 and pcS2 lexicographically.
    pcS1 and pcS2 must not be NULL.
    
    Returns:
    an integer less than 0 if pcS1 < pcS2,
    0 if pcS1 == pcS2,
    an integer greater than 0 if pcS1 > pcS2.
*/
int Str_compare(const char pcS1[], const char pcS2[]);

/*
    Find the first occurrence of pcNeedle in pcHaystack.
    pcHaystack and pcNeedle must not be NULL.
    
    Returns a pointer to the first character of the first match in pcHaystack,
    or NULL if pcNeedle does not occur in pcHaystack.
    If pcNeedle is the empty string, returns pcHaystack. 
 */
char *Str_search(const char pcHaystack[], const char pcNeedle[]);

#endif /* STR_H */