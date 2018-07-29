import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List<Card> cards,
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, int index){
          return Text('$index');
        },
      );
    }

}