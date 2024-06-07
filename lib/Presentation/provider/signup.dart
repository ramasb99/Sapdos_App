import 'package:flutter/material.dart';
import 'package:simple_app/Data/patient_model.dart';
import 'package:simple_app/Data/userData.dart';

class SignupProvider extends ChangeNotifier {
  void Usersignup(PatientLoginModel patientLoginModel) {
    userData.addAll({patientLoginModel.email: patientLoginModel});
  }
}
