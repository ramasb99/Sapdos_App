import 'package:flutter/material.dart';
import 'package:simple_app/Data/patient_model.dart';
import 'package:simple_app/Data/userData.dart';

class LoginProvider extends ChangeNotifier {
  bool Userlogin(String email, String password) {
    if (userData.containsKey(email)) {
      PatientLoginModel user = userData[email];
      return user.password == password;
    }
    return false;
  }
}
