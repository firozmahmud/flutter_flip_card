import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flip Card',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // add appbar
      appBar: AppBar(
        title: Text('Flutter Flip Card'),
      ),

      body: body(),
    );
  }

  Widget body() {
    return Container(
        margin: EdgeInsets.all(50),
        child: Center(
            child: FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  color: Colors.pink,
                  child: Center(
                      child: Text('I am Front',
                          style: TextStyle(fontSize: 25, color: Colors.green))),
                ),
                back: Container(
                    color: Colors.orangeAccent,
                    child: Center(
                        child: Text('I am back',
                            style: TextStyle(
                                fontSize: 25, color: Colors.green)))))));
  }
}
