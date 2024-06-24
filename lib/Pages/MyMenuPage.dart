import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:habit/Utils/AnalyticsMenu.dart';
import 'package:habit/Utils/ArchiveMenu.dart';
import 'package:habit/Utils/BackupHabitsMenu.dart';
import 'package:habit/Utils/JournalMenu.dart';
import 'package:habit/Utils/ReorderMenu.dart';
import 'package:habit/Utils/RoutineAiMenu.dart';
import 'package:habit/Utils/RoutineMenu.dart';
import 'package:habit/Utils/SettingsMenu.dart';
import 'package:habit/UtilsContent/TheForContent.dart';

class Mymenupage extends StatefulWidget {
  const Mymenupage({super.key});

  @override
  State<Mymenupage> createState() => _MymenupageState();
}

class _MymenupageState extends State<Mymenupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              buildMenuHeader(),
              buildMenuContainer([
                buildMenuRow(FontAwesomeIcons.gear, "Settings", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settingsmenu()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.chartSimple, "Analytics", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Analyticsmenu()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.bookOpen, "Journal", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Journalmenu()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.box, "Routine", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Routinemenu()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.bars, "Reorder", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Reordermenu()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.boxArchive, "Backup Habits", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BackupHabitsScreen()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.boxesPacking, "Archive", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Archivemenu()));
                }),
                const SizedBox(height: 25),
                buildMenuRow(FontAwesomeIcons.networkWired, "Routine AI", () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Routineaimenu()));
                }),
              ]),
              const SizedBox(height: 10),
              buildMenuContainer([
                buildMenuRow(FontAwesomeIcons.gift, "Win Rewards!", () {}),
              ]),
              const SizedBox(height: 10),
              buildMenuContainer(
                [
                  buildMenuRow(FontAwesomeIcons.star, "Rate the app", () {}),
                  const SizedBox(height: 25),
                  buildMenuRow(
                      FontAwesomeIcons.paperPlane, "Send FeedBack", () {}),
                  const SizedBox(height: 25),
                  buildMenuRow(
                      FontAwesomeIcons.twitter, "Follow us on X", () {}),
                  const SizedBox(height: 25),
                  buildMenuRow(FontAwesomeIcons.instagram,
                      "Follow us on Instagram", () {}),
                ],
              ),
              const SizedBox(height: 10),
              buildMenuContainer([
                buildMenuRow(FontAwesomeIcons.lock, "Privacy Policy", () {}),
                const SizedBox(height: 25),
                buildMenuRow(
                    FontAwesomeIcons.rectangleList, "Terms of use", () {}),
              ]),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildMenuHeader() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Theforcontent()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.star,
                size: 20,
                color: Colors.yellow,
              ),
              SizedBox(width: 5),
              Text(
                "TheFor Pro",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuContainer(List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        child: Column(
          children: children,
        ),
      ),
    );
  }

  Widget buildMenuRow(IconData icon, String text, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.lightBlueAccent,
          ),
          const SizedBox(width: 20),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
        ],
      ),
    );
  }
}
