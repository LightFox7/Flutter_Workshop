import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// Page for the Step 4

class Page2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImagePage();
  }
}

class ImagePage extends StatefulWidget {
  // Edit this class

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  Future _getImageFromCamera() async {
    // Write this method
  }

  Future _getImageFromGallery() async {
    // Write this method
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Center(
              child: Text(
                "Pick image",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    height: 2),
              )),
          Row(children: [
            const SizedBox(width: 60),
            RaisedButton(
              child: Text('From camera'),
              onPressed: _getImageFromCamera
            ),
            const SizedBox(width: 40),
            RaisedButton(
              child: Text('From gallery'),
              onPressed: _getImageFromGallery
            ),
          ]),
          // You could add the image display here
        ],
      ),
    );
  }
}