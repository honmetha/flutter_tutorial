import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue[300]),
        home: Scaffold(
          appBar: AppBar(title: Text('WordPair Generator')),
          body: Center(
            child: Text('Hello World'),
          ),
        ));
  }
}
