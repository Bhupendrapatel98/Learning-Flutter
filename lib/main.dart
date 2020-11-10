
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Form',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        title: Text('MyApp'),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:EdgeInsets.only(top: 50),
              child: Text('Login Form'
                ,style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),),
            ),
            Container(
              margin:EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter name',
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.only(top: 20,left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter name',
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.all(10),
              child: FlatButton(
                child: Text('Login', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  data();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void data() async {

    var url = 'https://api.themoviedb.org/3/trending/person/day?api_key=c4824776bf6f08433a4c4e7cd75a6acc';

    var response = await http.get(url);

    if (response.statusCode == 200) {
      
      var jsonResponse = convert.jsonDecode(response.body);
      print("object : ${jsonResponse}.");

    } else {
      print('Request: ${response.statusCode}.');
    }

  }

}

