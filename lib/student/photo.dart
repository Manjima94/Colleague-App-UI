// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
              GridView(
                        
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 10,crossAxisSpacing: 10),
                  
              children: [
                SizedBox(
                  height: 60,
                  width: 200,
                  child: Image.network(fit: BoxFit.cover,
                      'https://www.medianews4u.com/wp-content/uploads/2022/09/Heartwarming-Onam-campaigns-from-brands-spread-festive-delight.jpg'),
                ),
                Image.network(fit: BoxFit.cover,
                    'https://www.thomascook.in/blog/wp-content/uploads/2019/08/onam-festival-1024x683.jpg')
              ]),
              
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Align(alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 60, 97, 162),
            shape: CircleBorder(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Addphoto(),
                  ));
            },
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
            ],
      ),

    );
  }
}

class Addphoto extends StatefulWidget {
  const Addphoto({super.key});

  @override
  State<Addphoto> createState() => _AddphotoState();
}

class _AddphotoState extends State<Addphoto> {
  XFile? pick;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(left: 90.0),
          child: Text(
            'Add Photo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photo',
              style: TextStyle(fontSize: 20),
            ),
            InkWell(
              onTap: () async {
                ImagePicker picked = ImagePicker();
                pick = await picked.pickImage(source: ImageSource.gallery);
                setState(() {
                  image = File(pick!.path);
                });
              },
              child: Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(7)),
                child: image == null
                    ? Image.asset("images/addimage.png")
                    : Image.file(
                        image!,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                  decoration:
                      InputDecoration(enabledBorder: OutlineInputBorder())),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: SizedBox(
                width: 350,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 60, 97, 162),
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
