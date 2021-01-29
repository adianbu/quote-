import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final void delete;
  const QuoteCard({this.quote,this.delete}) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(quote.text,
            style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800]
            ),),
          Divider(height: 10),
          Text(quote.author,
            style: TextStyle(
                fontSize: 18,
                color: Colors.grey[750]
            ),),
          FlatButton.icon(
            onPressed: () => delete,
            label: Text("Delete"),
            icon: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
