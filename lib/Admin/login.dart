// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/Tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300.h,
          width: 350.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color.fromARGB(255, 193, 221, 233),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Color.fromARGB(255, 36, 104, 159),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 300.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: 300.w,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    icon: Icon(Icons.lock),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: SizedBox(
                  height: 50.h,
                  width: 250.w,
                  child: FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 60, 97, 162),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tabbar(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
