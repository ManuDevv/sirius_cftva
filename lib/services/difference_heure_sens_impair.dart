import 'package:flutter/material.dart';

var diff;

 differenceHeureArques() {
  TimeOfDay now = TimeOfDay.now();
  // ci dessous on transforme l'heure actuelle en minute
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay heureDeArques = TimeOfDay(hour: 15, minute: 15);

  // on transforme l'heure de Arques en int

  int heureDeArquesEnMinute = heureDeArques.hour * 60 + heureDeArques.minute;

  diff = nowInMinutes - heureDeArquesEnMinute;
  print(diff);

 
}

 differenceHeureArquesSensPair() {
  TimeOfDay now = TimeOfDay.now();
  // ci dessous on transforme l'heure actuelle en minute
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay heureDeArques = TimeOfDay(hour: 17 , minute: 23);

  // on transforme l'heure de Arques en int

  int heureDeArquesEnMinute = heureDeArques.hour * 60 + heureDeArques.minute;

  diff = nowInMinutes - heureDeArquesEnMinute;
  print(diff);

 
}

void differenceHeureBlendecques() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 24);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureBlendecquessensPair() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 17, minute: 01);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureLaCoupole() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 32);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}
void differenceHeureLaCoupoleSensPair() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 16, minute: 54);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureHallines() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 40);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}
void differenceHeureHallinesSensPair() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 16, minute: 49);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureEsquerdes() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 48);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}
void differenceHeureEsquerdesSensPair() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 16, minute: 44);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureSetques() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 15, minute: 55);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}
void differenceHeureSetquesSensPair() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 16, minute: 38);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureLumbres() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 16, minute: 20);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}

void differenceHeureLumbresSensPair() {
  TimeOfDay now = TimeOfDay.now();
  int nowInMinutes = now.hour * 60 + now.minute;

  TimeOfDay testDate = TimeOfDay(hour: 16, minute: 30);
  int testDateInMinutes = testDate.hour * 60 + testDate.minute;
  diff = nowInMinutes - testDateInMinutes;
  print(diff);
}


