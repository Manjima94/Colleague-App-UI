// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:event_project/student/previous.dart';
import 'package:event_project/student/upcoming.dart';

import 'package:flutter/material.dart';

class Tabb extends StatefulWidget {
  const Tabb({super.key});

  @override
  State<Tabb> createState() => _TabbState();
}

class _TabbState extends State<Tabb> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: TabBarView(children: [Upcome(), Previous()]),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
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
                            'Upcoming',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Previous',
                            style: TextStyle(fontSize: 20),
                          )
                        ]),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
