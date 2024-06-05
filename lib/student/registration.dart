import 'package:event_project/student/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final departmentController = TextEditingController();
  final regNoController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> registerStudent() async {
    if (formKey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        String uid = userCredential.user!.uid;
        await FirebaseFirestore.instance.collection('Student').doc(uid).set({
          'name': nameController.text,
          'department': departmentController.text,
          'regNo': regNoController.text,
          'phone': phoneController.text,
          'email': emailController.text,
          'Password':passwordController.text,
          'uid': uid,
        });

        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString('uid', uid);

        Fluttertoast.showToast(
          msg: "Registered Successfully!",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0,
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => StudentSignin(),
          ),
        );

        // Clear form fields
        nameController.clear();
        departmentController.clear();
        regNoController.clear();
        phoneController.clear();
        emailController.clear();
        passwordController.clear();
      } catch (e) {
        print('Error during registration: $e');
        Fluttertoast.showToast(
          msg: "Error: ${e.toString()}",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
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
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextField(
                  label: 'Name',
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                ),
                               buildTextField(
                  label: 'Department',
                  controller: departmentController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                ),
                buildTextField(
                  label: 'Register No',
                  controller: regNoController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                ),
                buildTextField(
                  label: 'Phone No',
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty || value.length != 10) {
                      return 'Enter a valid phone number';
                    }
                    return null;
                  },
                ),
                buildTextField(
                  label: 'Email',
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                ),
                buildTextField(
                  label: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Enter a valid password (min. 6 characters)';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll( const Color.fromARGB(255, 60, 97, 162),)),
                      onPressed: registerStudent,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    required String? Function(String?) validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
          ),
          SizedBox(
            height: 45,
            width: 350,
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText,
              validator: validator,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

