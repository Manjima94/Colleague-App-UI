// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/Teacher.dart';
import 'package:event_project/Admin/addnot.dart';
import 'package:event_project/Admin/event2.dart';
import 'package:event_project/Admin/notification.dart';
import 'package:flutter/material.dart';

class Requst extends StatefulWidget {
  const Requst({super.key});

  @override
  State<Requst> createState() => _RequstState();
}

class _RequstState extends State<Requst> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 90,
              ),
              child: Text(
                'Request',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            bottom: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: [
                  Text(
                    'Teacher',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    ),
                  ),
                  Text('Event',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 19))
                ]),
            actions: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Not(),
                            ));
                      },
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                      )))
            ],
          ),
          body: TabBarView(children: [Teacher(), AdminEvent2()]),
        ));
  }
}
// ignore_for_file: prefer_const_constructors

