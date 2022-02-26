import 'package:flutter/material.dart';
import 'package:homework10/feed.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SupercarNews',
        debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}


