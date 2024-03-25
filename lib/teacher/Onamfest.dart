import 'package:event_project/student/photo.dart';
import 'package:event_project/teacher/Onam.dart';
import 'package:flutter/material.dart';

class Onamfest extends StatefulWidget {
  const Onamfest({super.key});

  @override
  State<Onamfest> createState() => _OnamfestState();
}

class _OnamfestState extends State<Onamfest> {
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
                    'Details',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Photo',
                    style: TextStyle(fontSize: 20),
                  )
                ]),
          ),
          body: TabBarView(children: [Onam(),Photo()]),
        ));
  }
}
