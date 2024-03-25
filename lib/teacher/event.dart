// ignore_for_file: prefer_const_constructors

import 'package:event_project/student/actions.dart';
import 'package:event_project/teacher/Add.dart';
import 'package:event_project/teacher/Onamfest.dart';
import 'package:event_project/teacher/tFood.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: [
                  Text(
                    'Upcoming',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    'Previous',
                    style: TextStyle(fontSize: 17),
                  )
                ]),
          ),
          body: TabBarView(children: [Upcoming(), Previous()]),
        ));
  }
}

class Upcoming extends StatefulWidget {
  const Upcoming({super.key});

  @override
  State<Upcoming> createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
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
                        builder: (context) => Fud(),
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
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 60, 97, 162),
              shape: CircleBorder(),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Add(),
                    ));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class Previous extends StatefulWidget {
  const Previous({super.key});

  @override
  State<Previous> createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {
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
                        builder: (context) => Onamfest(),
                      ));
                },
                child: Text(
                  'Onam Festival',
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Food(),
                        ));
                  },
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
