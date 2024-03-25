// ignore_for_file: prefer_const_constructors

import 'package:event_project/student/actions.dart';
import 'package:event_project/student/event.dart';
import 'package:event_project/student/req.dart';
import 'package:flutter/material.dart';

class Upcome extends StatefulWidget {
  const Upcome({super.key});

  @override
  State<Upcome> createState() => _UpcomeState();
}

class _UpcomeState extends State<Upcome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Text(
                      'Event',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Account(),
                              ));
                        },
                        icon: Icon(
                          Icons.person_outline_outlined,
                          size: 30,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Notificat(),
                              ));
                        },
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          size: 30,
                        )),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: [
                  Text(
                    'Event',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Request',
                    style: TextStyle(fontSize: 20),
                  )
                ]),
          ),
          Expanded(child: TabBarView(children: [Event(), Request()])),
        ])));
  }
}
