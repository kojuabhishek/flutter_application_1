
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: Container(color: Colors.blueGrey),
      home: Home(),
    );
  }
}
