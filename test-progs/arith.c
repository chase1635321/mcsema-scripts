#include <stdio.h>
#include <stdlib.h>
#include <string.h>
 

int main() {
   int first = 5, second = 5, add, subtract, multiply;
   float divide;
 
   add = first + second;
   subtract = first - second;
   multiply = first * second;
   divide = first / (float)second;   //typecasting
 
   printf("Sum = %d\n", add);
   printf("Difference = %d\n", subtract);
   printf("Multiplication = %d\n", multiply);
   printf("Division = %.2f\n", divide);
}

