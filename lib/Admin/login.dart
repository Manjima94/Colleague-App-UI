// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/requst.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 193, 221, 233)),
          child: Column(
            children: [
              Text(
                '\nLogin',
                style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 36, 104, 159)),
              ),
              SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Username', icon: Icon(Icons.person)),
                  )),
              SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password', icon: Icon(Icons.lock)),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                    height: 50,
                    width: 250,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Requst(),
                            ));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
