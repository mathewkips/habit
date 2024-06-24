import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Journalcontent extends StatefulWidget {
  const Journalcontent({super.key});

  @override
  State<Journalcontent> createState() => _JournalcontentState();
}

class _JournalcontentState extends State<Journalcontent> {
  
  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text("Journaling"),
      content: Text("This is the journal"),
      actions: <Widget>[
      

          
       

        


      ],
    );
  }
}
