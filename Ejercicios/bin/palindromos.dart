/*Nombre de la escuela: Universidad Tecnlógica Metropolitana
Nombre del alumno: Martin Morales Ada Nazcais
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 4 - Palíndromos
Cuatrimestre: 5
Grupo: A
Parcial: 1
*/

/*Los palíndromos son palabras o frases que al leerse de izquierda a derecha y viceversa expresan o
tienen el mismo sentido. A este vocablo también se le puede llamar palíndromas. El origen del vocablo
proviene del término griego palin dromein, que significa volver a ir atrás.
Un palíndromo puede ser sencillo de leer de derecha a izquierda si está constituido por una o dos
palabras. Sin embargo, adquiere complejidad cuando la frase gana longitud o es extensa, eso se debe a
que a simple vista puede no tener sentido. Un ejemplo de palíndromo es “Allí va Ramón y no
maravilla”.
Tu trabajo es construir un programa en Dart que reciba una frase la evalué y te responda si esta es o no
palíndroma en caso de que sea un palíndromo también te debe devolver la cantidad de palabras que
componen la frase.
*/

import 'dart:io';

void main() {

  print('Escriba el número o la palabra');
  // User enter a string or a number
  String? original = stdin.readLineSync();

  // then we will reverse the input
  String? reverso = original!.split('').reversed.join('');

  // then we will compare
  if (original == reverso) {
    print('Es un palindromo');
  } else {
    print('No es un palindromo');
  }
}