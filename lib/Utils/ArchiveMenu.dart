// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Archivemenu extends StatefulWidget {
  const Archivemenu({super.key});

  @override
  State<Archivemenu> createState() => _ArchivemenuState();
}

class _ArchivemenuState extends State<Archivemenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Archived Habits",
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
            FaIcon(
              FontAwesomeIcons.boxArchive,
              size: 50,
              color: Colors.blue,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Empty Archive',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'There are no Archived habits',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
