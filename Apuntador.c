#include <stdio.h>
//Definición
struct Sensor1{;
   int identificador1;
   double temperatura1;
};
struct Sensor2{;
   int identificador2;
   double temperatura2;
};
   struct Sensor3{;
   int identificador3;
   double temperatura3;
   };
int main(void){
  // Declaración e inicialización de una estructura
   struct Sensor1 s = {0,25.4};
   struct Sensor2 r = {1,24.5};
   struct Sensor3 p = {2,45};

   // Declaración e inicialización de una estructura
   struct Sensor1 *ptr1 =&s;
   struct Sensor2 *ptr2 =&r;
   struct Sensor3 *ptr3 =&p;

   printf("Identificador: %d\n", ptr1->identificador1);
   printf("Temperatura: %lf\n", ptr1->temperatura1);
   if ( ptr1 -> temperatura1 <= 26){
     printf("TEMPERATURA FRIA\n");
   }
   else{
    printf("TEMPERATURA CALIENTE\n");
   }

   printf("Identificador: %d\n", ptr2->identificador2);
   printf("Temperatura: %lf\n", ptr2->temperatura2);
   if ( ptr2 -> temperatura2 <= 26){
     printf("TEMPERATURA FRIA\n");
   }
   else{
    printf("TEMPERATURA CALIENTE\n");
   }

   printf("Identificador: %d\n", ptr3->identificador3);
   printf("Temperatura: %lf\n", ptr3->temperatura3);
   if ( ptr3 -> temperatura3 <= 26){
     printf("TEMPERATURA FRIA\n");
   }
   else{
    printf("TEMPERATURA CALIENTE\n");
   }

   return 0;

};

