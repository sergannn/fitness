// profile_model.dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileModel {
  String firstName;
  String lastName;
  String height;
  String weight;
  String age;

  ProfileModel({
    required this.firstName,
    required this.lastName,
    required this.height,
    required this.weight,
    required this.age,
  });

  // Конвертация в Map для сохранения
  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'height': height,
      'weight': weight,
      'age': age,
    };
  }

  // Создание из Map при загрузке
  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      height: map['height'] ?? '',
      weight: map['weight'] ?? '',
      age: map['age'] ?? '',
    );
  }
}
