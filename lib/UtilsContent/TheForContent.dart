// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Theforcontent extends StatefulWidget {
  const Theforcontent({super.key});

  @override
  State<Theforcontent> createState() => _TheforcontentState();
}

class _TheforcontentState extends State<Theforcontent> {
  String? selectedSubscription;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  buildMenuHeader(),
                ],
              ),
            ),
            Subscribtions(
              title: "Pro Lifetime",
              subtitle: "Pay One use foerver",
              price: "Ksh 3,100.00",
              discount: " ",
              value: "Pro Lifetime",
              selectedValue: selectedSubscription,
              onChanged: (String? value) {
                setState(() {
                  selectedSubscription = value;
                });
              },
            ),
            Subscribtions(
                title: "Pro year",
                subtitle: "Ksh 1,600.00 / year",
                price: "ksh 133.33,133.33/month",
                discount: "-33%",
                value: "Pro year",
                selectedValue: selectedSubscription,
                onChanged: (String? value) {
                  setState(() {
                    selectedSubscription = value;
                  });
                }),
            Subscribtions(
                title: "Pro Month",
                subtitle: "",
                price: "ksh 200.00 / month",
                discount: "",
                value: "Pro Month",
                selectedValue: selectedSubscription,
                onChanged: (String? value) {
                  setState(() {
                    selectedSubscription = value;
                  });
                }),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Whats included",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ItemsIncluded(
              Color: Colors.red[600],
              icon: Icons.analytics,
              text: "Unlock Analytics",
            ),
            const SizedBox(
              height: 10,
            ),
            ItemsIncluded(
              Color: Colors.purple[700],
              icon: Icons.send_and_archive,
              text: " unlock Goal setting",
            ),
            ItemsIncluded(
              Color: Colors.green[300],
              icon: Icons.send_and_archive,
              text: "Journaling",
            ),
            const ItemsIncluded(
              Color: Colors.blue,
              icon: Icons.pallet,
              text: "More Colors",
            ),
            const ItemsIncluded(
              Color: Colors.blueGrey,
              icon: Icons.task_alt,
              text: "Premium Content",
            ),
            const ItemsIncluded(
              icon: Icons.mail,
              Color: Colors.orange,
              text: "Backup Habits",
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: const Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "While the free version of TheFor already gives users many\nFeatures including unlimited habits,TheFor Pro pushes its\ncapabilities even further",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "TheFor Pro is a paid option, and it allows us to cover the\ncosts and also help TheFor stay free for everyone",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            // Text(
            //   "Subscription will automatically renew unless cancelled within 24-hours\nbefore the end of the current period.you can cancel anytime in settings.",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 10,
            //   ),
            // ),
            // Text(
            //   "Any Unused portion of a free trial will be forfeited if you purchase a\nsubscription",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 10,
            //   ),
            // ),
            // Text(
            //   "By subscribing to TheFor pro you agree to the privacy\npolicy and Terms of use",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 10,
            //   ),
            // ),
            // Text(
            //   "Privacy",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 10,
            //   ),
            // ),
            // Text(
            //   "Policy",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 10,
            //   ),
            // ),
            // Text(
            //   " and",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 10,
            //   ),
            // ),
            // Text(
            //   " Terms of use ",
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 10,
            //   ),
            // ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "By subscribing to TheFor pro you agree to the",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuHeader() {
  return const Padding(
    padding: EdgeInsets.only(top: 16.0),
    child: Row(children: [
      Row(
        children: [
          Text(
            "TheFor Pro",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: Colors.yellow,
          ),
        ],
      ),
    ]),
  );
}

class Subscribtions extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String discount;

  final String value;
  final String? selectedValue;
  final ValueChanged<String?> onChanged;

  const Subscribtions(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.discount,
      required this.selectedValue,
      required this.value,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: RadioListTile<String>(
        value: value,
        groupValue: selectedValue,
        onChanged: onChanged,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        secondary: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (discount.isEmpty)
              Text(
                discount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            Text(
              price,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemsIncluded extends StatelessWidget {
  final String text;
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final Color;

  const ItemsIncluded(
      {required this.text, required this.icon, required this.Color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: const Icon(Icons.check, color: Colors.white),
    );
  }
}
