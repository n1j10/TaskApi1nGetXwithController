import 'dart:convert';
import 'package:http/http.dart' as http;

class MyApi {

  static Future getProducts(String text, String url) async {
    var request = await http.get(Uri.parse(url));
    if(request.statusCode == 200) {
      var result = jsonDecode(request.body);
      print(result);
      return result;
    }else{
      return "Wrong result";
    }
  }


  static Future postRequest(String url, Map body)async{
    var request = await http.post(
      Uri.parse(url),
      body: body,
    );
    if (request.statusCode==200 || request.statusCode==201){
      var result = jsonEncode(request.body);
      return result;
    }else{
      return "Wrong result";
    }
  }

  static Future putProducts(String tiltePut,String url) async {
    var response = await http.put(
        Uri.parse(url),
        body: ({"title": tiltePut})
    );
    if (response.statusCode == 200){
      var result = jsonDecode(response.body.toString());
      return result;
    }else{
      print("error1");
      return "error to get result";
    }
  }


  static Future deleteProducts(int id,String url) async {
    var response = await http.delete(
        Uri.parse(url)
    );
    if(response.statusCode == 200){
      var result = jsonDecode(response.body.toString());
      print(result);
      return result;
    }else{
      return("wrong result");
    }

  }

}





