// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Fud extends StatefulWidget {
  const Fud({super.key});

  @override
  State<Fud> createState() => _FudState();
}

class _FudState extends State<Fud> {
  @override
  Widget build(BuildContext context) {
    var cross;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 167, 189, 199)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '  Food Festival',
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
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Confirm co-ordinator'),
                            actions: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    setState(() {
                                      cross = !cross;
                                    });
                                    cross
                                        ? Image(
                                            image:
                                                AssetImage('images/leader.png'))
                                        : Image(
                                            image: AssetImage(
                                                'images/leader.png'));
                                  },
                                  child: Text('Submit'))
                            ],
                          ),
                        );
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/user.png'),
                          backgroundColor: Colors.white,
                        ),
                        title: Text('Student Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/remove.png')),
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
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/remove.png')),
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
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/remove.png')),
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
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/remove.png')),
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
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/remove.png')),
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
                        title: Text(' Name'),
                        subtitle: Text('Department'),
                        trailing: Image(image: AssetImage('images/remove.png')),
                      ),
                    )),
              ),
            ],
          )),
    );
  }
}
