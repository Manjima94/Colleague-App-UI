import 'package:event_project/Admin/addevent.dart';
import 'package:event_project/Admin/foodfest.dart';
import 'package:flutter/material.dart';

class AdminUpcome extends StatefulWidget {
  const AdminUpcome({super.key});

  @override
  State<AdminUpcome> createState() => _AdminUpcomeState();
}

class _AdminUpcomeState extends State<AdminUpcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            SizedBox(
                height: 50,
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Adminfood(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Food Festival',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(
                        Icons.delete_outline_rounded,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                  height: 50,
                  width: 350,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Christmas',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                  height: 50,
                  width: 350,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Music Festival',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(
                          Icons.delete_outline_rounded,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: FloatingActionButton(
                shape: CircleBorder(),
                backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Addevent(),
                      ));
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
