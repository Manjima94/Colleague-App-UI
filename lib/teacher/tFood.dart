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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 130,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 167, 189, 199)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 10),
                            child: Text(
                              '  Food Festival',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 11, 68, 148),
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 20),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      ' Date',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      ' Time',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      ' Location',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        ':',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        ':',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        ':',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        ' 20/04/2024',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 10.00 AM',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' College Hall',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ])),
                Padding(
                  padding: const EdgeInsets.only(top: 28, bottom: 10),
                  child: Text(
                    'Participants',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                      height: 70,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 153, 187, 201),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Confirm co-ordinator'),
                              actions: [
                                Center(
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Color.fromARGB(
                                                      255, 50, 100, 141)),
                                          shape: MaterialStatePropertyAll(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)))),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        setState(() {
                                          cross = !cross;
                                        });
                                        cross
                                            ? Image(
                                                image: AssetImage(
                                                    'images/leader.png'))
                                            : Image(
                                                image: AssetImage(
                                                    'images/leader.png'));
                                      },
                                      child: Text(
                                        'Submit',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )),
                                )
                              ],
                            ),
                          );
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/user.png'),
                            backgroundColor: Colors.white,
                          ),
                          title: Text(
                            'Student Name',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            'Department',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Image(image: AssetImage('images/remove.png')),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                      height: 70,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 153, 187, 201),
                        onPressed: () {},
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/user.png'),
                            backgroundColor: Colors.white,
                          ),
                          title: Text(
                            ' Name',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            'Department',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Image(image: AssetImage('images/remove.png')),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                      height: 70,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 153, 187, 201),
                        onPressed: () {},
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/user.png'),
                            backgroundColor: Colors.white,
                          ),
                          title: Text(
                            ' Name',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            'Department',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Image(image: AssetImage('images/remove.png')),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                      height: 70,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 153, 187, 201),
                        onPressed: () {},
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/user.png'),
                            backgroundColor: Colors.white,
                          ),
                          title: Text(
                            ' Name',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            'Department',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Image(image: AssetImage('images/remove.png')),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                      height: 70,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 153, 187, 201),
                        onPressed: () {},
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/user.png'),
                            backgroundColor: Colors.white,
                          ),
                          title: Text(
                            ' Name',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            'Department',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Image(image: AssetImage('images/remove.png')),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SizedBox(
                      height: 70,
                      width: 350,
                      child: FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 153, 187, 201),
                        onPressed: () {},
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/user.png'),
                            backgroundColor: Colors.white,
                          ),
                          title: Text(
                            ' Name',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text(
                            'Department',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing:
                              Image(image: AssetImage('images/remove.png')),
                        ),
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
