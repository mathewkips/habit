// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:habit/Pages/CreateHabitPage.dart';

import 'package:habit/Pages/MyMenuPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habit/Utils/AnalyticsMenu.dart';
import 'package:habit/Utils/JournalMenu.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.grid_view_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Mymenupage(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Habits',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.bookOpen,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Journalmenu(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.chartSimple,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Analyticsmenu(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        elevation: 20,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicatorWeight: 2,
          tabs: [
            Tab(text: 'Today'),
            Tab(text: 'Weekly'),
            Tab(text: 'Overall'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildTabContent(),
          buildTabContent(),
          buildTabContent(),
        ],
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
            Icon(
              Icons.bedtime_off,
              color: Colors.blue,
              size: 50,
            ),
            SizedBox(height: 20),
            Text(
              'No Habits For today',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'There is no habit for Today. Create one',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
