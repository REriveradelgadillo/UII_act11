import 'package:flutter/material.dart';
import 'package:rivera0538/pages/home_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
