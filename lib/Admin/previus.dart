// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Previus extends StatefulWidget {
  const Previus({super.key});

  @override
  State<Previus> createState() => _PreviusState();
}

class _PreviusState extends State<Previus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                  height: 130,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 167, 189, 199)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 10),
                          child: Text(
                            '  Onam Festival',
                            style: TextStyle(
                                color: Color.fromARGB(255, 11, 68, 148),
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 20),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ' Date',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    ' Time',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    ' Location',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      ':',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      ':',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      ':',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      ' 20/04/2024',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      ' 10.00 AM',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      ' College Hall',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ])),
            ),
            Container(
                height: 130,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 167, 189, 199)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 10),
                        child: Text(
                          '  Music Festival',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 68, 148),
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' Date',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  ' Time',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  ' Location',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    ':',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    ':',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Text(
                                    ':',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    ' 20/04/2024',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    ' 10.00 AM',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  Text(
                                    ' College Hall',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ])),
          ])),
    );
  }
}
