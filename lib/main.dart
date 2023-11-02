// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ng\'s Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Day of Flutter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimalName('Dog'),
              SizedBox(height: 8),
              AnimalName('Cat'),
              SizedBox(height: 8),
              AnimalName('Bird'),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimalName extends StatelessWidget {
  final String name;

  const AnimalName(this.name);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}
