import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
  home: QuoteList(),
)); 

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Charles Darwin', text: 'A man who dares to waste one hour of time has not discovered the value of life.'),
    Quote(author: 'Charles Darwin', text: 'It is not the strongest of the species that survives, nor the most intelligent that survives. It is the one that is most adaptable to change.'),
    Quote(author: 'Albert Einstein', text: 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.'),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              )
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
