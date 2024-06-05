// ignore_for_file: prefer_const_constructors
import 'package:event_project/student/foodfest.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: [
          SizedBox(
              height: 50,
              width: 350,
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Food(),
                      ));
                },
                child: Text(
                  'Food Festival',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {},
                  child: Text(
                    'Christmas',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {},
                  child: Text(
                    'Music Festival',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
