// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class Adnot extends StatefulWidget {
  const Adnot({super.key});

  @override
  State<Adnot> createState() => _AdnotState();
}

class _AdnotState extends State<Adnot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Text(
              'Add Notification',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' Event Name',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                        child: SizedBox(
                          height: 45,
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder()),
                          ),
                        )),
                    Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
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
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: SizedBox(
                          height: 50,
                          width: 350,
                          child: FloatingActionButton(
                            backgroundColor:
                                const Color.fromARGB(255, 60, 97, 162),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Send',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )),
                    )
                  ]),
            )));
  }
}
