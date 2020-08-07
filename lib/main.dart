import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double gen = 50;
  double yuk = 50;
  Color renk = Colors.blueAccent;
  BorderRadiusGeometry radius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer_Random_Class"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: gen,
          height: yuk,
          decoration: BoxDecoration(color: renk, borderRadius: radius),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();
              gen = random.nextInt(300).toDouble();
              // yuk = random.nextDouble();
              yuk = random.nextInt(300).toDouble();

              renk = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);
              radius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }),
    );
  }
}
