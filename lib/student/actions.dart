// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_project/student/profedit.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Account extends StatefulWidget {
  final File? image;

  Account({super.key, this.image});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final depController = TextEditingController();
  final regController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchStudentDetail();
  }

  Future<void> fetchStudentDetail() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? stdId = pref.getString('uid');
      print('SharedPreferences std Id: $stdId');
      if (stdId != null && stdId.isNotEmpty) {
        DocumentSnapshot studentSnapshot = await FirebaseFirestore.instance
            .collection('Student')
            .doc(stdId)
            .get();

        if (studentSnapshot.exists) {
          setState(() {
            nameController.text = studentSnapshot['name'] ?? '';
            depController.text = studentSnapshot['department'] ?? '';
            regController.text = studentSnapshot['regNo'] ?? '';
            phoneController.text = studentSnapshot['phone'] ?? '';
            emailController.text = studentSnapshot['email'] ?? '';
            passwordController.text = studentSnapshot['Password'] ?? '';
          });
        }
      }
    } catch (e) {
      print('Error fetching student details: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error fetching student details.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70, left: 10),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileEdit()),
                              );
                            },
                            icon: Icon(Icons.edit),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: widget.image != null
                          ? FileImage(widget.image!)
                          : null,
                    ),
                  ],
                ),
                buildProfileField('Name', nameController),
                buildProfileField('Department', depController),
                buildProfileField('Register No', regController),
                buildProfileField('Phone No', phoneController),
                buildProfileField('Email', emailController),
                buildProfileField('Password',passwordController)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileField(String label, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Text(label, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 5),
          SizedBox(
            height: 50,
            width: 320,
            child: TextFormField(
              style: TextStyle(fontSize: 18),
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
        ],
      ),
    );
  }
}

class Notificat extends StatefulWidget {
  const Notificat({super.key});

  @override
  State<Notificat> createState() => _NotificatState();
}

class _NotificatState extends State<Notificat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 167, 189, 199)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Onam',
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 113, 157), fontSize: 20),
                  ),
                  Text(
                      '"We are delighted to announce the upcoming Onam Program, a celebration of joy, culture, and togetherness! The college principal has approved the event, and we cant wait to make it a memorable occasion for all.')
                ],
              ),
            ),
          ),
        ));
  }
}
