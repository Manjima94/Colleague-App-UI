// ignore_for_file: prefer_const_constructors

import 'package:event_project/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var dep = TextEditingController();
  var regno = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();

  
  Future<void> student() async {
    if (formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.text, password: password.text);
        String uid = userCredential.user!.uid;
        final regreference =
            await FirebaseFirestore.instance.collection('Student').add({
          ' Name': name.text,
          'Department' : dep.text,
          'Reg No ' : regno.text,
          'Mobile': phone.text,
          'Email': email.text,
          'Password': password.text,

          // 'Confirm password': password2
        });
        print('Registered Successfully!!');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Signin(),
          ),
        );
      } catch (e) {
        print('Unexpected error during registration: $e');
        Fluttertoast.showToast(
          msg: "Unexpected error during registration.",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }
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
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
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
                        controller: name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          }
                          return null;
                        },
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
                        controller: dep,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          }
                          return null;
                        },
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
                        controller: regno,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Required';
                          }
                          return null;
                        },
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
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter a valid Number';
                          }
                          return null;
                        },
                        controller: phone,
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
                        controller: email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
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
                        controller: password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter a valid password';
                          }
                          return null;
                        },
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
                          student();
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
        ),
      ),
    );
  }
}
