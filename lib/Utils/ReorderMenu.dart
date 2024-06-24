// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit/Pages/CreateHabitPage.dart';

class Reordermenu extends StatefulWidget {
  const Reordermenu({super.key});

  @override
  State<Reordermenu> createState() => _ReordermenuState();
}

class _ReordermenuState extends State<Reordermenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reorder Habits",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: buildTabContent(),
      ),
    );
  }

  Widget buildTabContent() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No Habits for today',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'There are no habits for today.Create one?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Define what happens when the button is pressed
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                side: BorderSide(color: Colors.blue),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateHabitPage(),
                    ),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'Create',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
