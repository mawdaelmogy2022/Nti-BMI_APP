import 'package:bmi_calculator_app/src/core/style/list_app.dart';
import 'package:bmi_calculator_app/src/core/style/textfield_controller.dart';
import 'package:bmi_calculator_app/src/core/widget/custombutton.dart';
import 'package:bmi_calculator_app/src/feature/home/view/widgets/appbar_home.dart';
import 'package:bmi_calculator_app/src/feature/home/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static GlobalKey<FormState> formState = GlobalKey<FormState>();
  String result = '';

  @override
  void initState() {
    super.initState();
    TextfieldController.length.addListener(() {
      setState(() {});
      TextfieldController.weight.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    TextfieldController.length.dispose();
    TextfieldController.weight.dispose();
  }

  void calculateBMI() {
    double? weight = double.tryParse(TextfieldController.weight.text);
    double? length = double.tryParse(TextfieldController.length.text);
    double lengthInMeters = length! / 100;
    double bmi = weight! / (lengthInMeters * lengthInMeters);
   String status;

    if (bmi < 18.5) {
      status = 'Underweight (نحيف)';
    } else if (bmi >= 18.5 && bmi < 25) {
      status = 'Normal (طبيعي)';
    } else if (bmi >= 25 && bmi < 30) {
      status = 'Overweight (وزن زائد)';
    } else {
      status = 'Obese (سمين)';
    }

      setState(() {
      result = 'Your BMI is: ${bmi.toStringAsFixed(2)}\nStatus: $status';
    });
  }
   
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarHome(),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Form(
                  key: formState,
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: ListApp.listMass.length,
                        itemBuilder: (context, index) {
                          return CustomTextfield(
                              textfieldModel: ListApp.listMass[index]);
                        }),
                  ),
                ),
                CustomButton(
                  title: 'Calculator',
                  ontap: () {
                    if (formState.currentState!.validate()) {
                      calculateBMI();
                    } else {
                      print('not valid');
                    }
                  },
                ),
                Text(result),
              ],
            )));
  }
}
