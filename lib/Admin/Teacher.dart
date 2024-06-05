import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Teacher extends StatefulWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          children: [
            Column(
              children: [
                _buildTeacherCard(
                  name: 'Teacher Name',
                  department: 'Department',
                ),
                _buildTeacherCard(
                  name: 'Teacher Name',
                  department: 'Department',
                ),
                _buildTeacherCard(
                  name: 'Teacher Name',
                  department: 'Department',
                ),
                _buildTeacherCard(
                  name: 'Teacher Name',
                  department: 'Department',
                ),
                _buildTeacherCard(
                  name: 'Teacher Name',
                  department: 'Department',
                ),
                _buildTeacherCard(
                  name: 'Teacher Name',
                  department: 'Department',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeacherCard({required String name, required String department}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Color.fromRGBO(203, 220, 228, 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20.r,
              backgroundImage: AssetImage('images/user.png'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 50.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    textScaleFactor: 1,
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    department,
                    style: TextStyle(fontSize: 15.sp),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.cancel_outlined,
              size: 30.sp,
              color: Colors.red,
            ),
            Icon(
              Icons.check_circle_outline_outlined,
              size: 30.sp,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
