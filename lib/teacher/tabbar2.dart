// ignore_for_file: prefer_const_constructors

import 'package:event_project/teacher/event.dart';
import 'package:event_project/teacher/stdlist.dart';
import 'package:flutter/material.dart';

class Evnt extends StatefulWidget {
  const Evnt({super.key});

  @override
  State<Evnt> createState() => _EvntState();
}

class _EvntState extends State<Evnt> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Expanded(
              child: TabBarView(children: [Studlist(), Events()]),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.blue)),
                  child: TabBar(
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      indicator: BoxDecoration(
                          color: const Color.fromARGB(255, 60, 97, 162),
                          borderRadius: BorderRadius.circular(30)),
                      tabs: [
                        Text(
                          'Students',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Events',
                          style: TextStyle(fontSize: 20),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
