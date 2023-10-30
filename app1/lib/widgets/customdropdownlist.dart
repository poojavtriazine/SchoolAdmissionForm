import 'package:app1/model/formdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDownList extends StatefulWidget {
  const CustomDropDownList({super.key});

  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  final subjectList = ['BCA', 'MCA', 'BBA', 'MBA', 'B.Tech'];
  String? selctedvalue = "";
  final FormDataController myFormController = Get.put(FormDataController());
  _CustomDropDownListState() {
    selctedvalue = subjectList[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        hint: const Text("Select Subject"),
        value: selctedvalue,
        icon: const Icon(Icons.arrow_drop_down_sharp),
        iconSize: 36,
        items: subjectList.map((e) {
          return DropdownMenuItem(
            value: e,
            child: Text(e),
          );
        }).toList(),
        onChanged: (newvalue) {
          setState(() {
            selctedvalue = newvalue as String;
            myFormController.dropdownItem.value = selctedvalue.toString();
          });
        });
  }
}
