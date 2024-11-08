import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:taskwithapi/apiLink.dart';
import 'package:taskwithapi/server.dart';
import 'package:http/http.dart' as http;

class MyController extends GetxController {
  // TextEditingController name = Get.put(TextEditingController());
  // TextEditingController email = Get.put(TextEditingController());
  // TextEditingController pass = Get.put(TextEditingController());
  MyApi api = MyApi();

  static Future<void> addUpdate() async {
    String title = 'iphone Galaxy +1';
    String url = AppLinkApi.add;
    var response = await MyApi.putProducts(title, url);
    if (response == 200 && response == 201) {
      return(response);
    } else {
      print("Product updated: $response");
    }
  }


  static Future<void> deletProduct() async{
    int id=1;
    String url = AppLinkApi.delete;
    try {
      var response = await http.delete(Uri.parse(url));
      if (response.statusCode == 200) {
        print('Product deleted successfully.');
      } else {
        print('Failed to delete product. Status code: ${response.statusCode}');
        print('Response: ${response.body}');

      }
    }catch(e){
      print("an error occurred: $e");

    }

    }





      }



      // MyApi.deleteProducts(id, url);






