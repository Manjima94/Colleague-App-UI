// ignore_for_file: prefer_const_constructors


import 'package:event_project/student/Succes.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(28.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(child: Image.asset('images/user.png')),
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
                'Depratment',
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
                'Register No',
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
                'Email',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 40),
                  child: SizedBox(
                    height: 45,
                    width: 350,
                    child: TextFormField(
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
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
            ])));
  }
}

class Notificat extends StatefulWidget {
  const Notificat({super.key});

  @override
  State<Notificat> createState() => _NotificatState();
}

class _NotificatState extends State<Notificat> {
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
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 167, 189, 199)),
            child: Column(
              children: [
                Text(
                  'Onam',
                  style: TextStyle(
                      color: Color.fromARGB(255, 17, 113, 157), fontSize: 15),
                ),
                Text(
                    '"We are delighted to announce the upcoming Onam Program, a celebration of joy, culture, and togetherness! The college principal has approved the event, and we cant wait to make it a memorable occasion for all.')
              ],
            ),
          ),
        ));
  }
}

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
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
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 130,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 167, 189, 199)),
                  child: Column(children: [
                    Text(
                      'Food Festival\n',
                      style: TextStyle(
                          color: Color.fromARGB(255, 13, 81, 113),
                          fontSize: 17),
                    ),
                    Text(
                        'Date        : 03/04/2024\nTime        : 3.00 PM\nLocation : college Ground'),
                  ]),
                ),
                Text(
                  '\nParticipants',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      title: Text('Student Name'),
                      subtitle: Text('Department'),
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
                      title: Text('Student Name'),
                      subtitle: Text('Department'),
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
                      title: Text('Student Name'),
                      subtitle: Text('Department'),
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
                      title: Text('Student Name'),
                      subtitle: Text('Department'),
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
                      title: Text('Student Name'),
                      subtitle: Text('Department'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
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
                      title: Text('Student Name'),
                      subtitle: Text('Department'),
                    ),
                  ),
                ),
                SizedBox(
                    height: 50,
                    width: 350,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sucess(),
                            ));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ))
              ],
            )));
  }
}
