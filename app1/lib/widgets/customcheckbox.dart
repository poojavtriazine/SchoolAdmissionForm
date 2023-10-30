import 'package:app1/model/formdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? ischecked = false;
  final FormDataController myFormController = Get.put(FormDataController());
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: ischecked,
        activeColor: Colors.blue,
        checkColor: Colors.white,
        onChanged: (bool? newbool) {
          setState(() {
            ischecked = newbool;
            if (ischecked == false) {
              myFormController.contactChecked = false;
            } else {
              myFormController.contactChecked = true;
            }
          });
        });
  }
}
