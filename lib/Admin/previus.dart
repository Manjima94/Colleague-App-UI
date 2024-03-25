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
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 167, 189, 199)),
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
                    ]),
              ),
            ),
            Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 167, 189, 199)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Music Festival',
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
                            '26/05/2024',
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
                            '6.00 PM',
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
                  ]),
            ),
          ])),
    );
  }
}
