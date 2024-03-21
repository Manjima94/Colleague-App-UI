// ignore_for_file: prefer_const_constructors

import 'package:event_project/student/tabbar.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Text(
            'Registration',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Depratment',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Register No',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Phone No',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Email',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 40),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SizedBox(
                  height: 50,
                  width: 300,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tabb(),
                          ));
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
