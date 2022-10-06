import 'package:customtextformfield/customtextformfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// ignore_for_file: prefer_const_constructors
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Hello There',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Automatic identity verification which enable you to verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  CustomTextFormField(
                    hintText: 'Enter Name',
                    text: 'Name',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ]),
      )),
    );
  }
}
