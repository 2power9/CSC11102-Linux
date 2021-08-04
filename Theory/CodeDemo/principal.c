#include <stdio.h> 
#include "max.h" 
#include "point.h" 
int main () { 
    Point p = { 3, 4 }; 
    affi_point (p); 
    printf ("max = %d\n", max (p.x, p.y)); 
    return 0; 
} 
