import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Text(quote.author,
              style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            )),
            const SizedBox(height: 6.0),
            TextButton.icon(
              onPressed: () {
                delete();
              },
              icon: const Icon(Icons.delete),
              label: const Text('delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}
