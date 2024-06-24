// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Analyticsmenu extends StatefulWidget {
  const Analyticsmenu({super.key});

  @override
  State<Analyticsmenu> createState() => _AnalyticsmenuState();
}

class _AnalyticsmenuState extends State<Analyticsmenu>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Analytics",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          controller: tabController,
          tabs: [
            Tab(
              text: "All habits",
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(
              'assets/analytics.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
