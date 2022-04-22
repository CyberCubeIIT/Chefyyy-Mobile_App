import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

List<String> recordToIngredientsAndQuantities(NewRecipesRecord doc) {
  var parts = doc.recipeIngredientParts;
  var quantities = doc.recipeIngredientQuantities;
  var listOfIngsAndQuantities = new List();
  if (parts.length < quantities.length) {
    for (var i = 0; i < parts.length; i++) {
      listOfIngsAndQuantities[i] =
          parts.elementAt(i) + " " + quantities.elementAt(i);
    }
  } else {
    for (var i = 0; i < quantities.length; i++) {
      listOfIngsAndQuantities[i] =
          parts.elementAt(i) + " " + quantities.elementAt(i);
    }
  }

  return listOfIngsAndQuantities;
}

List<String> instructionToList(NewRecipesRecord doc) {
  var text = new List();
  var instruction = doc.recipeInstructions;
  for (var i = 0; i < instruction.length; i++) {
    text[i] = instruction.elementAt(i);
  }
  return text;
}

double calculateCalories(
  double usrHeight,
  double usrWeight,
  int usrAge,
  String usrGender,
  String usrWorkout,
) {
  var workout = {
    "Little or No Exercise": 1.2,
    "Light Excercise": 1.375,
    "Medium Excercise": 1.55,
    "Hard Excercise": 1.725,
    "Intense Excercise": 1.9
  };
  var height = usrHeight * 39.37;
  var weight = usrWeight * 2.205;
  var gender = usrGender;
  var age = usrAge;
  double calories;
  double workoutVal = workout[usrWorkout];
  if (gender == "Male") {
    calories =
        (66 + (6.23 * weight) + (12.7 * height) - (6.8 * age)) * workoutVal;
  } else {
    calories =
        (655 + (4.35 * weight) + (4.7 * height) - (4.7 * age)) * workoutVal;
  }
  return calories / 3;
}

String getIngrediants(
  NewRecipesRecord doc,
  String ingredinat,
) {
  var ingrediantsList = doc.recipeIngredientParts;
  for (int i = 0; i < ingrediantsList.length; i++) {
    if (ingrediantsList[i] == ingredinat) {
      return ingrediantsList[i];
    }
  }
  return "Not Found";
}
