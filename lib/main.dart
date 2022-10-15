import 'package:flutter/material.dart';

import 'mySquare.dart/mySquare.dart';
import 'mySquare.dart/mycube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List clean = [" Feed 1", " Feed 2", "Feed 3", "Feed 4", "Feed 5"];
  final List cube = [" Story 1", " Story 2", "Story 3", "Story 4", "Story 5"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cube.length,
              itemBuilder: (context, index) {
                return MyCube(
                  child: cube[index],
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: clean.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: clean[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
