import 'package:flutter/material.dart';
import 'package:besmellah/models/kuwait.dart';

class Page02 extends StatelessWidget {
  const Page02({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(place.imgURL),
            Text(place.discription),
          ],
        ),
      ),
    );
  }
}

// Text(place.discription),
