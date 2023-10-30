import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  TextEditingController? controller;
  String? hint = "";
  String? labeltext = "";
  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hint,
      required this.labeltext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: labeltext,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
