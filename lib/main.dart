// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit/screens/MyHomeScreen.dart';

void main() => runApp(HabitTracker());

class HabitTracker extends StatelessWidget {
  const HabitTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyHomeScreen(),
    );
  }
}
