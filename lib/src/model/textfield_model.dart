import 'package:flutter/material.dart';

class TextfieldModel {
  final String hintText;
  final String label;
  final Icon icon;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  TextfieldModel(
      {required this.validator,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.label});
}
