import 'package:flutter/material.dart';
import 'package:sowlab_assignment/core/config/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text("Working"))),
    );
  }
}
