// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Detailss extends StatefulWidget {
  const Detailss({super.key});

  @override
  State<Detailss> createState() => _DetailssState();
}

class _DetailssState extends State<Detailss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 180,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 167, 189, 199)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Onam Festival',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 68, 148),
                              fontSize: 19),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ' Date :',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                '25/05/2024',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ' Time :',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                '10.00 AM',
                                style: TextStyle(fontSize: 17),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                ' Location :',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'College Hall',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  ' Host :',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  'Ameen',
                                  style: TextStyle(fontSize: 17),
                                )
                              ]),
                        ),
                      ])),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  'Participants',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 153, 187, 201),
                      onPressed: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Student Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/leader.png')),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                    height: 60,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 153, 187, 201),
                      onPressed: () {},
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
                      backgroundColor: Color.fromARGB(255, 153, 187, 201),
                      onPressed: () {},
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
                      backgroundColor: Color.fromARGB(255, 153, 187, 201),
                      onPressed: () {},
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
            ],
          )),
    );
  }
}
