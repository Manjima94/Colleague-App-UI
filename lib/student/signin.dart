// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_project/student/registration.dart';
import 'package:event_project/student/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StudentSignin extends StatefulWidget {
  const StudentSignin({super.key});

  @override
  State<StudentSignin> createState() => _StudentSigninState();
}

class _StudentSigninState extends State<StudentSignin> {
  var stuemail = TextEditingController();
  var stupassword = TextEditingController();
  bool isloading = false;

  final formkey = GlobalKey<FormState>();

  void studentlogin() async {
    setState(() {
      isloading = true;
    });
    if (formkey.currentState!.validate()) {
      String email = stuemail.text.trim();
      String password = stupassword.text.trim();
      try {
        QuerySnapshot querysnapshot = await FirebaseFirestore.instance
            .collection('Student')
            .where('email', isEqualTo: email)
            .where('password', isEqualTo: password)
            .limit(1)
            .get();
        if (querysnapshot.docs.isNotEmpty) {
          var studentData =
              querysnapshot.docs.first.data() as Map<String, dynamic>;
          var storeid = studentData['uid'];
          if (storeid != null) {
            SharedPreferences pref = await SharedPreferences.getInstance();
            await pref.setString('uid', storeid);
            String? storeStudentData = pref.getString('uid');
            print('store student data : $storeStudentData');
          }
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Invalid Credentials'),
                content: Text('Please enter valid email and password.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        print('Error: $e');
      } finally {
        setState(() {
          isloading = false;
        });
      }
    }
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
                                return 'Enter a valid email';
                              }
                              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                  .hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Email Address',
                              hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
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
                          padding: const EdgeInsets.only(left: 200, bottom: 30),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Forgot Password?'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 350,
                          child: FloatingActionButton(
                            backgroundColor:
                                const Color.fromARGB(255, 60, 97, 162),
                            onPressed: () {
                              studentlogin();
                              Navigator.pushReplacement(
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
                          ),
                        ),
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
                                  ),
                                );
                              },
                              child: Text(
                                'sign up',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
