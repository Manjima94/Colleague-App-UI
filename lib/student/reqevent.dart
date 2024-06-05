import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReqEvent extends StatefulWidget {
  const ReqEvent({super.key});

  @override
  State<ReqEvent> createState() => _ReqEventState();
}

class _ReqEventState extends State<ReqEvent> {
  var event = TextEditingController();
  var name = TextEditingController();
  var department = TextEditingController();
  var phone = TextEditingController();
  var description = TextEditingController();
  final formkey = GlobalKey<FormState>();

  Future<void> RequestEvent() async {
    await FirebaseFirestore.instance.collection('Request Event').doc().set({
      'Event': event.text,
      'name': name.text,
      'department': department.text,
      'phone': phone.text,
      'description': description.text
    });
    event.clear();
    name.clear();
    department.clear();
    phone.clear();
    description.clear();
    Navigator.pop(context);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Event Requested')));
  }

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
                    controller: event,
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
                    controller: name,
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
                    controller: department,
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
                    controller: phone,
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
                    controller: description,
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
                  onPressed: () {
                    RequestEvent();
                  },
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
