// ignore_for_file: prefer_const_constructors

import 'package:event_project/Admin/addnot.dart';
import 'package:flutter/material.dart';

class Requst extends StatefulWidget {
  const Requst({super.key});

  @override
  State<Requst> createState() => _RequstState();
}

class _RequstState extends State<Requst> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 150,
              title: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 60),
                  child: Text(
                    'Request',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TabBar(tabs: [
                    Text(
                      'Teacher',
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                    Text('Event',
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 19))
                  ]),
                ),
              ]),
              actions: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Not(),
                              ));
                        },
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          size: 30,
                        )))
              ],
            ),
            body: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 20),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 153, 187, 201)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Teacher Name'),
                        subtitle: Text('Department'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 153, 187, 201)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Teacher Name'),
                        subtitle: Text('Department'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 153, 187, 201)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Teacher Name'),
                        subtitle: Text('Department'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 153, 187, 201)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Teacher Name'),
                        subtitle: Text('Department'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 153, 187, 201)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Teacher Name'),
                        subtitle: Text('Department'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 153, 187, 201)),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Teacher Name'),
                        subtitle: Text('Department'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}

class Not extends StatefulWidget {
  const Not({super.key});

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 167, 189, 199)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\n  Onam\n',
                          style: TextStyle(
                              color: Color.fromARGB(255, 17, 113, 157),
                              fontSize: 17),
                        ),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.delete_outline))
                      ],
                    ),
                    Text(
                        '" We are delighted to announce the upcoming Onam    Program, a celebration of joy, culture, and   togetherness! The college principal has approved the event, and we cant wait to make it a memorable occasion for all.')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350.0),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                shape: CircleBorder(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Adnot(),
                      ));
                },
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
