import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Hello Prashanta!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 46.17,
                ),
              ),
            ],
          ),
        ), 
      ),
    );
  }
}