// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 30),
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(203, 220, 228, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Teacher Name',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Department',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(203, 220, 228, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Teacher Name',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Department',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(203, 220, 228, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Teacher Name',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Department',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(203, 220, 228, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Teacher Name',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Department',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(203, 220, 228, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Teacher Name',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Department',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(203, 220, 228, 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 17,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Teacher Name',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Department',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.cancel_outlined,
                    size: 30,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.check_circle_outline_outlined,
                    size: 30,
                    color: Colors.green,
                  ),
                ],
              ),
            ))
      ]),
    ));
  }
}
