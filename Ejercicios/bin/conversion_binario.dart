/*Nombre de la escuela: Universidad Tecnlógica Metropolitana
Nombre del alumno: Martin Morales Ada Nazcais
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio2 – Conversión a binario
Cuatrimestre: 5
Grupo: A
Parcial: 1
*/

/*Crear un programa en Dart que transforme un numero decimal a su equivalencia en binario, por ejemplo,
si usamos el método de la división sucesiva para calcular el valor binario del número 12, comenzaremos
dividiendo 12 entre 2, luego cada cociente resultante se divide por 2 hasta que se obtiene un cociente
cuya parte entera es 0.
*/

import 'dart:io';

void main()
 {
  int numdecimal;
  int numbinario;
  int i = 1;
  numbinario = 0;

  print("Por favor ingresa el número que quieras que sea convertido a Binario");

  numdecimal = int.parse(stdin.readLineSync()!);

  while (numdecimal > 0) 
  {
    numbinario = numbinario + (numdecimal % 2) * i;
    
    numdecimal = (numdecimal / 2).floor();
    i = i * 10;
  }

  print("El número decimal fue convertido a binario, el resultado fue:");
  print(numbinario);
}