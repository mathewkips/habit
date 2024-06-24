// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:habit/UtilsContent/TheForContent.dart';

class Settingsmenu extends StatefulWidget {
  const Settingsmenu({super.key});

  @override
  State<Settingsmenu> createState() => _SettingsmenuState();
}

class _SettingsmenuState extends State<Settingsmenu>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  bool _isDarkMode = false;
  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  Color selectedColor = Colors.blue;
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.red,
    Colors.deepOrange,
    Colors.purple,
    Colors.deepPurple,
    Colors.blueAccent,
    Colors.black,
    // Add more colors as needed
  ];
  List<bool> isLocked = [
    false,
    false,
    false,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];
  String _selectedTheme = 'System';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(children: [
                RadioListTile(
                  title: const Text("System"),
                  value: "System",
                  groupValue: _selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      _selectedTheme = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text("Light"),
                  value: "Light",
                  groupValue: _selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      _selectedTheme = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text("Dark"),
                  value: "Dark",
                  groupValue: _selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      _selectedTheme = value.toString();
                    });
                  },
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Accent color',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(colors.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        if (!isLocked[index]) {
                          setState(() {
                            selectedColor = colors[index];
                          });
                        }
                        if (isLocked[index]) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Theforcontent()));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: colors[index],
                          child: isLocked[index]
                              ? const Icon(Icons.lock, color: Colors.white)
                              : selectedColor == colors[index]
                                  ? const Icon(Icons.check, color: Colors.white)
                                  : Container(),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                ),
                child: Text(
                  "Start Week on",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      RadioListTile(
                        title: const Text("Saturday"),
                        value: "Saturday",
                        groupValue: _selectedTheme,
                        onChanged: (value) {
                          setState(() {
                            _selectedTheme = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("Sunday"),
                        value: "Sunday",
                        groupValue: _selectedTheme,
                        onChanged: (value) {
                          setState(() {
                            _selectedTheme = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: const Text("Monday"),
                        value: "Monday",
                        groupValue: _selectedTheme,
                        onChanged: (value) {
                          setState(() {
                            _selectedTheme = value.toString();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                ),
                child: Text(
                  "Habits tabs order",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        InkWell(
                          onLongPress: () {},
                          child: Row(
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onLongPress: () {
                            setState(() {});
                          },
                          child: Row(
                            children: [
                              Text(
                                "Weekly",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onLongPress: () {},
                          child: Row(
                            children: [
                              Text(
                                "Overall",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Long press an item to reorder"),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ]));
  }
}
