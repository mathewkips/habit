// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Routineaimenu extends StatefulWidget {
  const Routineaimenu({super.key});

  @override
  State<Routineaimenu> createState() => _RoutineaimenuState();
}

class _RoutineaimenuState extends State<Routineaimenu> {
  final TextEditingController _controller = TextEditingController();
  int _currentLength = 0;
  final int _maxLength = 200;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Routine AI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Beta",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Describe your",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                Text(
                  " Goal",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                  ),
                ),
                Text(
                  " and we will create a ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Personalised",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text(
                  " Routine for you!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  TextField(
                    controller: _controller,
                   
                    maxLength: _maxLength,
                    onChanged: (value) {
                      setState(() {
                        _currentLength = value.length;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Describe your routine details',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 20,
                      ), // Larger padding
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      counterText: '', // Hides default counter text
                    ),
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black, // Text color
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text(
                      '$_currentLength/$_maxLength',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: Text(
                  'Generate',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
