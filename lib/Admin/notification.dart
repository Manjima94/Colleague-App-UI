// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/addnot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Not extends StatefulWidget {
  const Not({Key? key}) : super(key: key);

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Notifications',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(18.0.w),
            child: Container(
              height: 180.h,
              width: 350.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color.fromARGB(255, 167, 189, 199),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Onam',
                          style: TextStyle(
                            color: Color.fromARGB(255, 17, 113, 157),
                            fontSize: 20.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete_outline,
                            size: 30.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      '"We are delighted to announce the upcoming Onam Program, a celebration of joy, culture, and togetherness! The college principal has approved the event, and we can\'t wait to make it a memorable occasion for all."',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 60, 97, 162),
              shape: CircleBorder(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Adnot(),
                  ),
                );
              },
              child: Icon(
                Icons.add,
                size: 50.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
