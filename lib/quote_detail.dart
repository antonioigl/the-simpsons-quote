import 'package:flutter/material.dart';
import 'package:thesimpsonsquote/quote.dart';
import 'package:thesimpsonsquote/quote_character.dart';
import 'package:thesimpsonsquote/quote_image.dart';
import 'package:thesimpsonsquote/quote_text.dart';



class QuoteDetail extends StatefulWidget {
  @override
  _QuoteDetailState createState() => _QuoteDetailState();
}

class _QuoteDetailState extends State<QuoteDetail> {

  Future<Quote> futureQuote;

//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }

  @override
  void initState() {
    super.initState();
    futureQuote = fetchQuote();


  }

  @override
  Widget build(BuildContext context) {


     return FutureBuilder<Quote>(
      future: futureQuote,
      builder: (context, snapshot) {

        if (snapshot.hasData) {
          return Text(snapshot.data.quote);
            Column(
              children: [
                QuoteText(snapshot.data.quote),
                QuoteCharacter(snapshot.data.character),
                QuoteImage(snapshot.data.image),
              ],
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }
}

