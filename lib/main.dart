import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  void getData() async{
    final url = Uri.parse('https://fakestoreapi.com/products/2');
    http.Response response = await http.get(url);
    if (response.statusCode == 200){
      print(response.body);

    }else{
      print('failed');
    }
    print(response.body);
  }
  @override
  Widget build(BuildContext context){

    getData();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Rest API Tutorial"),
        ),
      )
    );
  }
}