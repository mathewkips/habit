// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Journalmenu extends StatefulWidget {
  const Journalmenu({super.key});

  @override
  State<Journalmenu> createState() => _JournalmenuState();
}

class _JournalmenuState extends State<Journalmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Journal",
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
              'No Notes yet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Add a note to get started',
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
                    'Add',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
