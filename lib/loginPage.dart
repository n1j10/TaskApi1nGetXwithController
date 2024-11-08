import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'authcontroler.dart';
class LoginPage extends StatelessWidget {
   LoginPage({super.key});

   MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              MyController.addUpdate();
            },
            child: Container(
              width: 50,
              height: 50,
              child: Text("Add or put data"),
            ),
          ),
          TextButton(
            onPressed: () {
              MyController.deletProduct();
            },
            child: Container(
              width: 50,
              height: 50,
              child: Text("Delete Date From Api"),
            ),
          ),
        ],
      ),
    );
  }
}
