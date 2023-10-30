import 'package:app1/model/formdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    // final formData = Get.arguments as FormData;
    final FormDataController myFormController = Get.put(FormDataController());

    return Scaffold(
      body: Container(
        //margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.all(16.0),
        height: 800,
        width: 400,
        color: Colors.blue[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Student Details",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text('Name: ${myFormController.name.text}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Father Name: ${myFormController.fname.text}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Course: ${myFormController.dropdownItem.value}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Gender: ${myFormController.gender}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Contact NO: ${myFormController.contactChecked}'),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text("Back"))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
