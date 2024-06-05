// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event_project/student/actions.dart';
import 'package:event_project/teacher/Studetil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Studlist extends StatefulWidget {
  const Studlist({super.key});

  @override
  State<Studlist> createState() => _StudlistState();
}

class _StudlistState extends State<Studlist> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Stack(
              children: [
                StreamBuilder(
                  stream: firestore.collection('Student').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var stdlist = snapshot.data!.docs[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: SizedBox(
                              height: 60,
                              width: 350,
                              child: FloatingActionButton(
                                backgroundColor:
                                    Color.fromARGB(255, 215, 234, 243),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Stddetails(),
                                      ));
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/user.png'),
                                    backgroundColor: Colors.white,
                                  ),
                                  title: Text(stdlist['Name']),
                                  subtitle: Text(stdlist['Department']),
                                ),
                              )),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
