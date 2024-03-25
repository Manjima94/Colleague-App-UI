// ignore_for_file: prefer_const_constructors

import 'package:event_project/student/Onamdetail.dart';
import 'package:event_project/student/photo.dart';
import 'package:flutter/material.dart';

class Previous extends StatefulWidget {
  const Previous({super.key});

  @override
  State<Previous> createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Text(
              'Event',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Onam(),
                        ));
                  },
                  child: Text(
                    'Onam Festival',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
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
          )
        ]));
  }
}

class Onam extends StatefulWidget {
  const Onam({super.key});

  @override
  State<Onam> createState() => _OnamState();
}

class _OnamState extends State<Onam> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(

            bottom: TabBar(tabs: [
              Text(
                'Details',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Photo',
                style: TextStyle(fontSize: 20),
              )
            ]),
          ),
          body: TabBarView(children: [Detailss(), Photo()]),
        ));
  }
}
