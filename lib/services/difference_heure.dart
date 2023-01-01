import 'package:flutter/material.dart';

var diff;

 differenceHeureArques() {
  TimeOfDay now = TimeOfDay.now();
  // ci dessous on transforme l'heure actuelle en minute
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay heureDeArques = TimeOfDay(hour: 14, minute: 00);

  // on transforme l'heure de Arques en int

  int heureDeArquesEnMinute = heureDeArques.hour * 60 + heureDeArques.minute;

  diff = nowInMinutes - heureDeArquesEnMinute;
  print(diff);

 
}

void differenceHeureBlendecques() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 14, minute: 30);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureLaCoupole() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 14, minute: 45);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureHallines() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 00);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureEsquerdes() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 15);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureSetques() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 20);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureLumbres() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 30);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}


