// ignore_for_file: no_logic_in_create_state, must_be_immutable, prefer_typing_uninitialized_variables, avoid_types_as_parameter_names
import 'package:app1/model/formdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomRadioButton extends StatelessWidget {
  dynamic value;
  dynamic groupvalue;
  TextEditingController? controller;
  final String title;
  void Function(dynamic)? onChanged;
  final FormDataController myFormController = Get.put(FormDataController());
  CustomRadioButton({
    super.key,
    required this.value,
    required this.groupvalue,
    required this.title,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: groupvalue,
      onChanged: onChanged,
      title: Text(title),
    );
  }
}
