import 'package:event_project/Admin/TabEvent.dart';
import 'package:event_project/Admin/requst.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Expanded(
              child: TabBarView(children: [Requst(), Eevent()]),
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
                          'Request',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Event',
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
