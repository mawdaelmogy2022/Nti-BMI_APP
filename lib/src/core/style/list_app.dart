import 'package:bmi_calculator_app/src/core/style/textfield_controller.dart';
import 'package:bmi_calculator_app/src/model/textfield_model.dart';
import 'package:flutter/material.dart';

class ListApp {
  static List<TextfieldModel> listMass = [
    TextfieldModel(
      label: 'Length',
      hintText: 'Enter your length',
      icon: const Icon(Icons.height_outlined),
      controller: TextfieldController.length,
      validator:(val) {
        if (val!.isEmpty) {
          return 'يجب ادخال قيمة';
        }
        if (val.length > 4) {
          return 'يجب ان تكون القيمة اقل من 4 ';
        } if (val.length <= 1) {
          return 'يجب ان تكون القيمة اكبر من 1 ';
        }
        
        else {
          return null;
        }
      },
    ),

        TextfieldModel(
      label: 'wigth',
      hintText: 'Enter your weight',
      icon: const Icon(Icons.line_weight),
      controller: TextfieldController.weight,
      validator: (val) {
        if (val!.isEmpty) {
          return 'يجب ادخال قيمة';
        }
        if (val.length > 4) {
          return 'يجب ان تكون القيمة اقل من 4 ';
        } if (val.length <=1) {
          return 'يجب ان تكون القيمة اكبر 1 ';
        }
        
        else {
          return null;
        }
      },
    ),
  ];
}
