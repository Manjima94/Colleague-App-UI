// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_project/student/reqevent.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(children: [
        SizedBox(
            height: 50,
            width: 350,
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 60, 97, 162),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Accept(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Holi Festival',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text('Accept',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
            )),
        SizedBox(
            height: 60,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Halloween',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text('Accept',
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            )),
            // StreamBuilder(stream: FirebaseFirestore.instance.
            // collection('Request Event').
            // snapshots()
            // , builder: context,AsyncSnapshot<QuerySnapshot>snapshot),
        Padding(
          padding: const EdgeInsets.only(top: 370.0),
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 60, 97, 162),
            shape: CircleBorder(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReqEvent(),
                  ));
            },
            child: Icon(
              Icons.add,
              size: 50,
              color: Colors.white,
            ),
          ),
        )
      ]),
    ));
  }
}

class Accept extends StatefulWidget {
  const Accept({super.key});

  @override
  State<Accept> createState() => _AcceptState();
}

class _AcceptState extends State<Accept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Text(
            'Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Image.asset('images/user.png')),
          Text(
            'Anandu',
            style: TextStyle(fontSize: 17),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Department',
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        'Request Event',
                        style: TextStyle(fontSize: 17),
                      ),
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
                  Column(
                    children: [
                      Text(
                        ':',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        ':',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ' BCom',
                        style: TextStyle(fontSize: 17),
                      ),
                      Text(
                        'Holi Festival',
                        style: TextStyle(fontSize: 17),
                      ),
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
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 300),
            child: Text(
              'Host',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 49, 90, 123),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 153, 187, 201)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/user.png'),
                backgroundColor: Colors.white,
              ),
              title: Text('Host'),
              subtitle: Text('Department'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, right: 260),
              child: Text('Description :',
                  style: TextStyle(
                    fontSize: 17,
                  )))
        ],
      ),
    );
  }
}

    