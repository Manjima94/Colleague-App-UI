// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Onam extends StatefulWidget {
  const Onam({super.key});

  @override
  State<Onam> createState() => _OnamState();
}

class _OnamState extends State<Onam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 203, 220, 228)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Onam Festival',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 68, 148),
                              fontSize: 19),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ' Date :',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                '25/05/2024',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ' Time :',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                '10.00 AM',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ' Location :',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'College Hall',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ])),
              Padding(
                padding: const EdgeInsets.only(top: 28.0, bottom: 20),
                child: Text(
                  'Participants',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/leader.png'),
                        Image.asset('images/remove.png')
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                          padding: const EdgeInsets.only(right: 130),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/remove.png')
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                          padding: const EdgeInsets.only(right: 130),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/remove.png')
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                          padding: const EdgeInsets.only(right: 130),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/remove.png')
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                          padding: const EdgeInsets.only(right: 130),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/remove.png')
                      ],
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
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
                          padding: const EdgeInsets.only(right: 130),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Department',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Image.asset('images/remove.png')
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
