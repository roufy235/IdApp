import '../models/Quote.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function deleteFunc;

  QuoteCard(this.quote, this.deleteFunc);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800], fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
                onPressed: this.deleteFunc,
                label: Text('Delete quote'),
              icon: Icon(
                Icons.delete
              ),
            )
          ],
        ),
      ),
    );
  }
}