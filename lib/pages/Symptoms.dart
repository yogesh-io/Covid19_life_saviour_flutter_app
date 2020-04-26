import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffffdf9),
        appBar: AppBar(
          centerTitle: true,
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color(0xffffe3ed),
          title: Text('SYMPTOMS ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Card(
              child: Image.asset('images/symptom.jpg'),
            ),
          ],
        ));
  }
}
