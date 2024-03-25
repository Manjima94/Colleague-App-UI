// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Sucess extends StatefulWidget {
  const Sucess({super.key});

  @override
  State<Sucess> createState() => _SucessState();
}

class _SucessState extends State<Sucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 180.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/check.png')),
              Text(
                'Thank You!',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
              Text('Registration is successfull',
                  style: TextStyle(fontSize: 30)),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: SizedBox(
                    height: 50,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                      onPressed: () {},
                      child: Text(
                        'Done',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
