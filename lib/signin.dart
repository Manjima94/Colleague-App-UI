// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:event_project/registration.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50, left: 150),
          child: SizedBox(height: 300, child: CircleAvatar(radius: 400)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in',
                style: TextStyle(fontSize: 35),
              ),
              Text(
                'Sign in into your account \n\n',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email Adress',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 40),
                child: SizedBox(
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
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
                              builder: (context) => Register(),
                            ));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ),
              Row(
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(fontSize: 17),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'sign up',
                        style: TextStyle(fontSize: 17),
                      ))
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
