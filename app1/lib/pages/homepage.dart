// ignore_for_file: sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, avoid_print

import 'package:app1/model/formdata.dart';
import 'package:app1/pages/details.dart';
import 'package:app1/pages/location.dart';

import 'package:app1/widgets/customcheckbox.dart';
import 'package:app1/widgets/customdropdownlist.dart';
import 'package:app1/widgets/customtextformfield.dart';
import 'package:app1/widgets/customradiobutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final FormDataController myFormController = Get.put(FormDataController());
    final namecontroller = TextEditingController();
    final fnamecontroller = TextEditingController();
    //final textcontroller = TextEditingController();
    dynamic _groupValue = 'MALE';
    String Gender = '';
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Container(
          //margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          height: 650,
          width: 400,
          color: Colors.blue[100],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Student Admission Form",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  hint: 'Enter Name',
                  labeltext: 'Name',
                  controller: namecontroller,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  hint: ' Enter Father Name',
                  labeltext: 'FName',
                  controller: fnamecontroller,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose Course',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    CustomDropDownList(),
                  ],
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                const Text(
                  'Gender',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                CustomRadioButton(
                  value: 'MALE',
                  groupvalue: myFormController.gender.value,
                  title: 'MALE',
                  onChanged: (value) {
                    setState(() {
                      _groupValue = value;
                      print("_groupValue $_groupValue");
                      Gender = "MALE";
                      myFormController.gender.value = Gender.toString();
                      print(myFormController.gender.value);
                    });
                  },
                ),
                CustomRadioButton(
                  value: 'FEMALE',
                  groupvalue: myFormController.gender.value,
                  title: 'FEMALE',
                  onChanged: (value) {
                    setState(() {
                      _groupValue = value;
                      print(_groupValue);
                      Gender = "FEMALE";
                      myFormController.gender.value = Gender.toString();
                      print(myFormController.gender.value);
                    });
                  },
                ),

                const Row(
                  children: [
                    CustomCheckBox(),
                    Text("MobileNo"),
                    CustomCheckBox(),
                    Text("LandlineNo"),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          myFormController.name.text = namecontroller.text;
                          myFormController.fname.text = fnamecontroller.text;
                          // myFormController.gender.value = Gender.toString();
                          print(myFormController.gender.value);
                          Get.to(
                            const Details(),
                          );
                        },
                        child: const Text("Submit")),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(const LocationScreen());
                        },
                        child: const Text("Get Location"))
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
