import 'package:bmi_calculator_app/src/core/style/border_textfield.dart';
import 'package:bmi_calculator_app/src/model/textfield_model.dart';
import 'package:flutter/material.dart';


class CustomTextfield extends StatelessWidget {
 const CustomTextfield({super.key,required this.textfieldModel });

  final TextfieldModel textfieldModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: textfieldModel.validator,
          keyboardType: TextInputType.number,
          controller: textfieldModel.controller,
          decoration: InputDecoration(
            label: Text(textfieldModel.label),
            hintText: textfieldModel.hintText,
            prefix: textfieldModel.icon,
            border: BorderTextfield().border(radius: 30, color: Colors.black12),
            focusedBorder:
                BorderTextfield().border(radius: 10, color: Colors.green),
            enabledBorder: BorderTextfield().border(radius: 20, color: Colors.red),
            disabledBorder:
                BorderTextfield().border(radius: 50, color: Colors.yellow),
          ),
        ),
     const   SizedBox(height: 15,),
      ],
    );
  }
}
