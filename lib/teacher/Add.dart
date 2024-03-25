import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(left: 110.0),
          child: Text(
            'Event',
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
              'Event Name',
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
              'Date',
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
              'Time ',
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
              'Location',
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
                  onPressed: () {
                    Navigator.of(context).pop();
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
