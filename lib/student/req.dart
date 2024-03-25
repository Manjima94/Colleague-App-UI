// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(children: [
        SizedBox(
            height: 50,
            width: 350,
            child: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 60, 97, 162),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Accept(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Holi Festival',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text('Accept',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
            )),
        SizedBox(
            height: 60,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Halloween',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text('Accept',
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 350.0),
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 60, 97, 162),
            shape: CircleBorder(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Add(),
                  ));
            },
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        )
      ]),
    ));
  }
}

class Accept extends StatefulWidget {
  const Accept({super.key});

  @override
  State<Accept> createState() => _AcceptState();
}

class _AcceptState extends State<Accept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Text(
            'Details',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(child: Image.asset('images/user.png')),
          Text(
            'Anandu',
            style: TextStyle(fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Department :',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'BCom',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Request Event :',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Holi Festival',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ' Date   :',
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
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ' Time   :',
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
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ' Location   :',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'College Hall',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 300),
            child: Text(
              'Host',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 49, 90, 123),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
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
              title: Text('Host'),
              subtitle: Text('Department'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, right: 260),
              child: Text('Description :',
                  style: TextStyle(
                    fontSize: 17,
                  )))
        ],
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Text(
            'Event Request',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Request Event',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Depratment ',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Phone No',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: SizedBox(
                  height: 45,
                  width: 350,
                  child: TextFormField(
                    decoration:
                        InputDecoration(enabledBorder: OutlineInputBorder()),
                  ),
                )),
            Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 50),
                child: Container(
                  height: 130,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all()),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                  ),
                )),
            SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
