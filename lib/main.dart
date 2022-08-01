import 'package:flutter/material.dart';
import 'package:ismy/presentations/main_page/main_page.dart';
import 'package:ismy/presentations/main_page/widgets/drawer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MainPage(),
    );
  }
}
