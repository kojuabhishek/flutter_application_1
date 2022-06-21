import 'package:flutter_application_1/widgets/option.dart';
import 'package:flutter/material.dart';

import '../widgets/boxdestination.dart';
import '../widgets/recommendation.dart';
import '../widgets/selectoption.dart';
import '../widgets/selectway.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 224, 220),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          margin: const EdgeInsets.only(left: 30, top: 40, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Options(),
              SizedBox(height: 15),
              BoxDestination(),
              SizedBox(height: 14),
              SelectWay(),
              SizedBox(height: 15),
              SelectOptions(),
              SizedBox(height: 14),
              Recommendation()
            ],
          ),
        )),
      ),
    );
  }
}
