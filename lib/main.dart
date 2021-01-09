import 'models/Quote.dart';
import 'package:flutter/material.dart';

import 'widgets/QuoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Love For All, Hatred For None.', author: 'Osca Wilde'),
    Quote(text: 'Change the world by being yourself.', author: 'Osca Wilde'),
    Quote(text: 'Every moment is a fresh beginning.', author: 'Osca Wilde'),
    Quote(
        text: 'Never regret anything that made you smile.',
        author: 'Osca Wilde'),
    Quote(text: 'Die with memories, not dreams.', author: 'Osca Wilde'),
    Quote(text: 'Aspire to inspire before we expire.', author: 'Osca Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.redAccent,
        title: Text(
          'Quote List App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote,
                  () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
