import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'loginPage.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
    );
  }
}
