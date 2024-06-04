// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/Teacher.dart';
import 'package:event_project/Admin/addnot.dart';
import 'package:event_project/Admin/event2.dart';
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

class Not extends StatefulWidget {
  const Not({super.key});

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 167, 189, 199)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Onam',
                            style: TextStyle(
                                color: Color.fromARGB(255, 17, 113, 157),
                                fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete_outline,
                                size: 30,
                              ))
                        ],
                      ),
                      Text(
                          '" We are delighted to announce the upcoming Onam    Program, a celebration of joy, culture, and   togetherness! The college principal has approved the event, and we cant wait to make it a memorable occasion for all.')
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350.0),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                shape: CircleBorder(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Adnot(),
                      ));
                },
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
