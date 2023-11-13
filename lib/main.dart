import 'package:flutter/material.dart';
import 'package:flutter_http_packages/http_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Http Packages',
      theme: ThemeData(
          primaryColor: Colors.blue,
      ),
      home: const HttpPage(),
    );
  }
}