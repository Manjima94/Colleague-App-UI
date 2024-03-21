// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:event_project/student/req.dart';
import 'package:event_project/student/actions.dart';
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
                    child: TabBarView(children: [Upcome(), Previus()]),
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
                            color: Colors.blue,
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
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text(
              'Event',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Icon((Icons.person_outline), size: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(Icons.notifications_active_outlined),
            )
          ],
        ),
      ),
    );
  }
}

class Previus extends StatefulWidget {
  const Previus({super.key});

  @override
  State<Previus> createState() => _PreviusState();
}

class _PreviusState extends State<Previus> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
