import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'A man who dares to waste one hour of time has not discovered the value of life.',
    'It is not the strongest of the species that survives, nor the most intelligent that survives. It is the one that is most adaptable to change.',
    'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
