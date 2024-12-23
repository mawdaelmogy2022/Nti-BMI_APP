
import 'package:flutter/material.dart';

class BorderTextfield{
  InputBorder border({required double radius, required Color color}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color));
}
}