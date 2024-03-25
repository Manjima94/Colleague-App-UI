// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/event2teacher.dart';
import 'package:flutter/material.dart';

class AdminEvent2 extends StatefulWidget {
  const AdminEvent2({super.key});

  @override
  State<AdminEvent2> createState() => _AdminEvent2State();
}

class _AdminEvent2State extends State<AdminEvent2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 181, 204, 230)),
                  child: TabBar(
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 60, 97, 162),
                      ),
                      tabAlignment: TabAlignment.center,
                      isScrollable: true,
                      tabs: const [
                        Text('Students', style: TextStyle(fontSize: 18)),
                        Text('Teacher', style: TextStyle(fontSize: 18))
                      ]),
                ),
              ),
            ),
            Expanded(child: TabBarView(children: [EveStudents(), EveTeacher()]))
          ],
        ),
      ),
    );
  }
}

class EveStudents extends StatefulWidget {
  const EveStudents({super.key});

  @override
  State<EveStudents> createState() => _EveStudentsState();
}

class _EveStudentsState extends State<EveStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Studetail()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 18, child: Image.asset('images/user.png')),
                      Text(
                        'Adil Requests Food Festival',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 18, child: Image.asset('images/user.png')),
                      Text(
                        'Amal Requests Music Festival',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class Studetail extends StatefulWidget {
  const Studetail({super.key});

  @override
  State<Studetail> createState() => _StudetailState();
}

class _StudetailState extends State<Studetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Text(
            ' Teacher Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(child: Image.asset('images/user.png')),
              Text(
                'Name',
                style: TextStyle(fontSize: 17),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Register no :',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      '0000',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Department :',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      ' BCom',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ' Phone no   :',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      '25052024',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '   Email :',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'name@gamil.com',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '  Location   :',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'College Hall',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  width: 180,
                  child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Accept',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
                SizedBox(
                  height: 50,
                  width: 180,
                  child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                      onPressed: () {},
                      child: Text(
                        'Reject',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
