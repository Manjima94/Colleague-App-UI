// ignore_for_file: prefer_const_constructors

import 'package:event_project/teacher/tabbar2.dart';
import 'package:flutter/material.dart';

class Stddetails extends StatefulWidget {
  const Stddetails({super.key});

  @override
  State<Stddetails> createState() => _StddetailsState();
}

class _StddetailsState extends State<Stddetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Text(
            ' Student Details',
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Evnt(),
                            ));
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
