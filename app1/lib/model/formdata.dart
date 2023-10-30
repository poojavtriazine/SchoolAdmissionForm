import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormDataController extends GetxController {
  var name = TextEditingController();
  var fname = TextEditingController();
  var dropdownItem = ''.obs;
  var gender = ''.obs;
  bool contactChecked = false;
}
