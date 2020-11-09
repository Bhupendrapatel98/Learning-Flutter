
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }


}

