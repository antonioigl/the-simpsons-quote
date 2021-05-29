import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Quote> fetchQuote() async {

  final response = await http.get('https://thesimpsonsquoteapi.glitch.me/quotes');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Quote.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load quote');
  }
}

class Quote {
  final String quote;
  final String character;
  final String image;

  Quote({this.quote, this.character, this.image});

  factory Quote.fromJson(List<dynamic> json) {
    return Quote(
      quote: json[0]['quote'],
      character: json[0]['character'],
      image: json[0]['image'],
    );
  }
}