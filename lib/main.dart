/*import 'package:flutter/material.dart';
import 'quote.dart';
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EchoList(),
    ));
class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}
class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(text: 'If you want light to come into your life, you need to stand where it is shining.', author: 'JayShree Paramar'),
    Quote(author: 'JayShree Paramar', text: 'The good life is a process, not a state of being. It is a direction, not a destination. '),
    Quote(
        text: 'Live life to the fullest and focus onthe positive.',
        author: 'JayShree Paramar'),
  ];
  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'package:jayshree_lab_9/qoute_1.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(text: 'If you want light to come into your life, you need to stand where it is shining.', author: 'JayShree Paramar'),
    Quote(author: 'JayShree Paramar', text: 'The good life is a process, not a state of being. It is a direction, not a destination. '),
    Quote(
        text: 'Live life to the fullest and focus onthe positive.',
        author: 'JayShree Paramar'),
  ];


  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes
            .map((quote) => QuoteCard(
          quote: quote,
          delete: () {
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