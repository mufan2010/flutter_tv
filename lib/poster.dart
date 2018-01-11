import 'package:flutter/material.dart';

class Poster {
  const Poster({
    this.id,
    this.name,
    this.imagePath,
    this.width,
    this.height,
  });

  final int id;
  final String name;
  final String imagePath;
  final double width;
  final double height;
}

Container buildPost(Poster poster) {
  return new Container(
      margin: const EdgeInsets.all(5.0),
      child: new Stack(children: <Widget>[
        new Container(
            width: poster.width,
            height: poster.height,
            child: new Image.asset(poster.imagePath, fit: BoxFit.fill)),
        new Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: new Container(
              decoration: new BoxDecoration(color: const Color(0xae000000)),
              child: new Text(
                poster.name,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'serif',
                ),
              ),
            )),
      ]));
}
