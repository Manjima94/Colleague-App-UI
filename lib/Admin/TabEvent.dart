// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/Upcoming.dart';
import 'package:event_project/Admin/previus.dart';
import 'package:flutter/material.dart';

class Eevent extends StatefulWidget {
  const Eevent({super.key});

  @override
  State<Eevent> createState() => _EeventState();
}

class _EeventState extends State<Eevent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Text(
                'Event',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          bottom: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              tabs: const [
                Text(
                  'Upcoming',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Previous',
                  style: TextStyle(fontSize: 18),
                )
              ]),
        ),
        body: TabBarView(children: [AdminUpcome(), Previus()]),
      ),
    );
  }
}
