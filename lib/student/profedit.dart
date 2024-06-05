// ignore_for_file: use_build_context_synchronously, prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final TextEditingController nameController=TextEditingController();
  final TextEditingController depController=TextEditingController();
  final TextEditingController regController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();

  @override
  void initState() {
    super.initState();
   
    fetchStudentDetail();
  }

  @override
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

  Future<void> updateProfile() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? stdId = pref.getString('uid');
      await FirebaseFirestore.instance.collection('Student').doc(stdId).update({
        'name': nameController.text,
        'department': depController.text,
        'regNo': regController.text,
        'phone': phoneController.text,
        'email': emailController.text,
        'password': passwordController.text
      });
      await pref.setString('name', nameController.text);
      await pref.setString('department', depController.text);
      await pref.setString('regNo', regController.text);
      await pref.setString('phone', phoneController.text);
      await pref.setString('email', emailController.text);
      await pref.setString('Password', passwordController.text);

      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
              'Profile updated successfully',
            ),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(80)),
            backgroundColor: const Color.fromARGB(255, 60, 97, 162)),
      );
    } catch (e) {
      print('Error updating profile: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error updating profile')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: Text('Edit Profile'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildProfileField('Name', nameController),
              buildProfileField('Department', depController),
              buildProfileField('Register No', regController),
              buildProfileField('Phone No', phoneController),
              buildProfileField('Email', emailController),
              buildProfileField('Password', passwordController),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: updateProfile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  ),
                  child: Text('Update',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17)),
          SizedBox(
            height: 45,
            child: TextFormField(
              controller: controller,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
