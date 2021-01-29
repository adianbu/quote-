import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteBody()
  ));
}

class QuoteBody extends StatefulWidget {
  @override
  _QuoteBodyState createState() => _QuoteBodyState();
}

class _QuoteBodyState extends State<QuoteBody> {
  List<Quote> quotes = [Quote(text: "Hi",author: "Oscar"),
    Quote(text: "Hi",author: "Oscar"),
    Quote(text: "Hi",author: "Oscar")];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body:Column(
        children: quotes.map((quote) => QuoteCard(quote:quote,delete: () {setState(() {
          quotes.remove(quote);
        });},)).toList(),
      )
    );
  }
}



