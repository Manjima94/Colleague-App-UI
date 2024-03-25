// ignore_for_file: prefer_const_constructors

import 'package:event_project/student/actions.dart';
import 'package:event_project/teacher/Studetil.dart';
import 'package:flutter/material.dart';

class Studlist extends StatefulWidget {
  const Studlist({super.key});

  @override
  State<Studlist> createState() => _StudlistState();
}

class _StudlistState extends State<Studlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Text(
            'Students List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Account(),
                  ));
            },
            icon: Icon(
              Icons.person_outline_rounded,
              size: 30,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Notificat(),
                        ));
                  },
                  icon: Icon(
                    Icons.notifications_active_outlined,
                    size: 30,
                  )))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Stddetails(),
                            ));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Student Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 215, 234, 243),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
