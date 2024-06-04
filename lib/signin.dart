// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_project/student/registration.dart';
import 'package:event_project/student/tabbar.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var stuemail = TextEditingController();
  var stupassword = TextEditingController();

  final formkey = GlobalKey<FormState>();
  Future<void> _savestudenttosharedpreferences(String data) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('Students', data);
  }

  void validator() {
    if (formkey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Tabb(),
          ));
      return;
    }
    formkey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          width: 440,
          'images/signin.png',
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 250, left: 30),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
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
                          controller: stuemail,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ('Enter a valid email');
                            }
                            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'Email Adress',
                            hintStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,),
                        child: SizedBox(
                          width: 350,
                          child: TextFormField(
                            controller: stupassword,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter a strong password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:200,bottom: 30),
                        child: Center(child: TextButton(onPressed: (){}, child: Text('Forgot Password?'))),
                      ),
                      SizedBox(
                          height: 50,
                          width: 350,
                          child: FloatingActionButton(
                            backgroundColor:
                                const Color.fromARGB(255, 60, 97, 162),
                            onPressed: () async {
                              if (formkey.currentState!.validate()) {
                                String email = stuemail.text.trim();
                                String password = stupassword.text.trim();
                                var querysnapshot = await FirebaseFirestore
                                    .instance
                                    .collection('Student')
                                    .where('mail', isEqualTo: email)
                                    .limit(1)
                                    .get();

                                if (querysnapshot.docs.isNotEmpty) {
                                  var userData =
                                      querysnapshot.docs.first.data();
                                  if (userData['password'] == password) {
                                    await _savestudenttosharedpreferences(
                                        userData['data']);
                                  }
                                }
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Tabb(),
                                ),
                              );
                            },
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Dont have an account?',
                            style: TextStyle(fontSize: 17),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Register(),
                                    ));
                              },
                              child: Text(
                                'sign up',
                                style: TextStyle(fontSize: 17),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
