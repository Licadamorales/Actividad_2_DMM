/*Nombre de la escuela: Universidad Tecnlógica Metropolitana
Nombre del alumno: Martin Morales Ada Nazcais
Asignatura: Desarrollo Móvil Multiplataforma
Nombre del Maestro: Chuc Uc Joel Ivan
Nombre de la actividad: Ejercicio 1 - Calcular salario semanal
Cuatrimestre: 5
Grupo: A
Parcial: 1
*/

/*
Crear un programa con Dart que dado un número de horas trabajadas a la semana calcule el salario de
un empleado. Después de 40 horas trabajadas se deben pagar horas extra. El salario por hora es de
$120 y el salario por hora extra es de $175. Si las horas trabajadas son menores a 27 se debe desplegar
un aviso indicando que se le va a levantar un acta administrativa, cuando el empleado acumule 2 actas
administrativas se le debe informar de su despido
*/

import 'dart:io';

void main() {
  int actas;
  int hrs;
  int pago;
  int extra;
  int salextra;
  actas = 0;
  String apagar;
  apagar = "Yes";

  while (actas < 2 && apagar.toUpperCase() == "Yes") {
    print("Indique cuántas horas trabajó durante la semana");
    hrs = int.parse(stdin.readLineSync()!);
    while (hrs <= 0) {
      print("¡ERROR! No puedes escribir números negativos. Escribe una cifra real.");
      print("...");
      print("");
      print("Indique cuántas horas trabajó durante la semana");
      hrs = int.parse(stdin.readLineSync()!);
    }

    if (hrs < 27) {
      actas = actas + 1;
      pago = hrs * 120;
      print("En esta semana solo has trabajado $hrs, debes trabajar un mínimo de 27 horas.");
      print("");
      print("Lo sentimos pero tenemos que levantarle un Acta Administrativa, Usted tiene: $actas acta/s. ");
      print("");
      print("Apesar de no haber trabajado las horas necesarias se les pagará las horas trabajadas");
      print("");
      print("se le pagará un total de: $pago");
    } 
    else if (hrs <= 40) {
      pago = hrs * 120;
      print("Usted trabajó $hrs horas en esta semana");
      print("");
      print("Su pago será de $pago pesos");
      print("");
    } 
    else {
      extra = hrs - 40;
      salextra = extra * 175;
      pago = hrs * 120;
        print("Usted trabajó $hrs horas en esta semana");
      print("");
      print("Usted trabajó también $extra horas extra");
      print("Su pago será de ${pago + salextra} pesos");
      print("");

    }

    if (actas < 2) {
      print("Quiere consultar otra semana? (si = yes/no = no)");
      apagar = stdin.readLineSync()!;
    } else {
      print("");
      print(" Lo sentimos usted ha sido despedido ya que ha acumulado otra acta. (Actas que acumuladas: $actas)");
    }
  }
}