/*Nombre de la escuela: Universidad Tecnlógica Metropolitana
Nombre del alumno: Martin Morales Ada Nazcais
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 3 – Calcular IMC
Cuatrimestre: 5
Grupo: A
Parcial: 1
*/

/*El índice de masa corporal o IMC de una persona es una medida calculada de su peso con relación a su
estatura. Este número sirve como una estimación rápida de la grasa corporal. Clasifica a las personas
en categorías de peso, tales como con bajo peso, con sobrepeso y con obesidad.
Tu trabajo es construir un programa en Dart que te ayude a calcular el IMC y te devuelva la composición
corporal de acuerdo al resultado obtenido; este programa debe recibir tu altura en centímetros y tu peso
en kilogramos.
*/

import 'dart:io';

void main() {

  double kg;
  double altura;
  double imc;

  stdout.write("Escriba su peso en kilos");
  kg = double.parse(stdin.readLineSync()!);

  stdout.write("Escriba su altura en metros");
  altura = double.parse(stdin.readLineSync()!);

  imc = kg / (altura * altura);

  print('Su IMC es: ' + imc.toStringAsFixed(2));



  if (imc < 18.5) 
  {
    print("Usted tiene un peso bajo");
  }
  else if (imc < 25) 
  {
    print("Usted tiene un peso normal");
  } 
  else if (imc < 30) 
  {
    print("Usted tiene sobrepeso");
  } 
  else if (imc < 35) 
  {
    print("Usted tiene obesidad leve");
  } 
  else if (imc < 40)
  {
    print("Usted tiene obesidad media");
  } 
  else 
  {
    print("Usted tiene obesidad mórbida");
  }
}