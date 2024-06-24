// ignore_for_file: sort_child_properties_last, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

class CreateHabitPage extends StatefulWidget {
  @override
  _CreateHabitPageState createState() => _CreateHabitPageState();
}

class _CreateHabitPageState extends State<CreateHabitPage> {
  bool repeatDaily = true;
  bool reminder = false;
  bool goal = false;
  Color selectedColor = Colors.teal;
  String reminderTime = '';
  int frequency = 1;
  String repeatMode = 'Daily';

  void _pickColor() async {
    Color? pickedColor = await showDialog(
      context: context,
      builder: (context) {
        Color tempColor = selectedColor;
        return AlertDialog(
          title: Text(
            ' Color',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: tempColor,
              onColorChanged: (color) {
                tempColor = color;
              },
            ),
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Select'),
              onPressed: () {
                Navigator.of(context).pop(tempColor);
              },
            ),
          ],
        );
      },
    );

    if (pickedColor != null) {
      setState(() {
        selectedColor = pickedColor;
      });
    }
  }

  void _toggleReminder(bool value) {
    setState(() {
      reminder = value;
      if (reminder) {
        reminderTime = DateFormat('hh:mm a').format(DateTime.now());
      } else {
        reminderTime = '';
      }
    });
  }

  void _updateFrequency(int change) {
    setState(() {
      frequency += change;
      if (frequency < 1) {
        frequency = 1;
      }
      if (repeatMode == 'Weekly' && frequency > 7) {
        frequency = 7;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Habit'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Tittle',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  maxLines: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Text('Color'),
                    const Spacer(),
                    GestureDetector(
                      onTap: _pickColor,
                      child: Container(
                        width: 40,
                        height: 40,
                        color: selectedColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Text('Repeat'),
                    const Spacer(),
                    Switch(
                      value: repeatDaily,
                      onChanged: (value) {
                        setState(() {
                          repeatDaily = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                if (repeatDaily)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ChoiceChip(
                            label: Text('Daily'),
                            selected: repeatMode == 'Daily',
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'Daily';
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('Weekly'),
                            selected: repeatMode == 'Weekly',
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'Weekly';
                              });
                            },
                          ),
                          ChoiceChip(
                            label: Text('Monthly'),
                            selected: repeatMode == 'Monthly',
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'Monthly';
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                if (repeatMode == 'Daily')
                  Column(
                    children: [
                      const SizedBox(height: 16.0),
                      Row(
                        children: [
                          Text(
                            "On these days",
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FilterChip(
                            label: Text("M"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'M';
                              });
                            },
                            selected: repeatMode == 'M',
                          ),
                          FilterChip(
                            label: Text("T"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'T';
                              });
                            },
                            selected: repeatMode == 'T',
                          ),
                          FilterChip(
                            label: Text("W"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'W';
                              });
                            },
                            selected: repeatMode == 'W',
                          ),
                          FilterChip(
                            label: Text("TH"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'TH';
                              });
                            },
                            selected: repeatMode == 'TH',
                          ),
                          FilterChip(
                            label: Text("F"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'F';
                              });
                            },
                            selected: repeatMode == 'F',
                          ),
                          FilterChip(
                            label: Text("S"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'S';
                              });
                            },
                            selected: repeatMode == 'S',
                          ),
                          FilterChip(
                            backgroundColor: Colors.blue,
                            selectedColor: Colors.grey[700],
                            label: Text("Su"),
                            onSelected: (selected) {
                              setState(() {
                                repeatMode = 'Su';
                              });
                            },
                            selected: repeatMode == 'Su',
                          ),
                        ],
                      ),
                    ],
                  ),
                const SizedBox(height: 16.0),
                if (repeatMode == "Weekly")
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Frequency",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 16.0),
                          Text("Everyday"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.remove,
                              size: 15,
                            ),
                            onPressed: () => _updateFrequency(-1),
                          ),
                          Text("$frequency"),
                          IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 15,
                            ),
                            onPressed: () => _updateFrequency(1),
                          )
                        ],
                      ),
                    ],
                  ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    Row(
                      children: [
                        const Text('Reminder'),
                        const SizedBox(width: 10.0),
                        if (reminder) Text(reminderTime),
                      ],
                    ),
                    Spacer(),
                    Switch(
                      value: reminder,
                      onChanged: _toggleReminder,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Text('Goal'),
                    const Spacer(),
                    Switch(
                      value: goal,
                      onChanged: (value) {
                        setState(() {
                          goal = value;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  children: [
                    const Text('Routine'),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Select'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    minimumSize: const Size(double.infinity, 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DayButton extends StatelessWidget {
  final String label;

  const DayButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
