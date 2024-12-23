import 'package:bmi_calculator_app/src/core/style/color_app.dart';
import 'package:bmi_calculator_app/src/core/style/size_app.dart';
import 'package:bmi_calculator_app/src/core/style/string_app.dart';
import 'package:flutter/material.dart';

AppBar appBarHome() {
  return AppBar(
  backgroundColor: ColorApp.whiteColor,
  centerTitle: true,
    title:const Text(
    StringApp.appbarTitle,
      style: TextStyle(fontSize: SizeApp.s24),
    ),
  );
}
