import 'package:flutter/material.dart';
import 'package:text_field/radio_button.dart';
import 'package:text_field/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:Radiob(),

    );
  }
}
