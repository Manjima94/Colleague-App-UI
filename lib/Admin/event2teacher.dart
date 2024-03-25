import 'package:event_project/Admin/event2.dart';
import 'package:flutter/material.dart';

class EveTeacher extends StatefulWidget {
  const EveTeacher({super.key});

  @override
  State<EveTeacher> createState() => _EveTeacherState();
}

class _EveTeacherState extends State<EveTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Studetail()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 18, child: Image.asset('images/user.png')),
                      Text(
                        'Arya Requests Food Festival',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 18, child: Image.asset('images/user.png')),
                      Text(
                        'Hema Requests Music Festival',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
