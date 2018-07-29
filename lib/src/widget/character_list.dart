import 'package:flutter/material.dart';
import '../model/characterModel.dart';

class CharacterList extends StatelessWidget {
  final List<CharacterModel> characters;
  CharacterList(this.characters);
  
  Widget build(context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, int index) {
        return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blueGrey,
          blurRadius: 100.0,
        ),
      ]),
      child: 
        new ListTile(
          contentPadding: EdgeInsets.only(top: 25.0, bottom: 15.0, left: 10.0, right: 10.0),
          leading: Image.network(characters[index].image, height: 90.0,),
          title: Text(characters[index].name, style: TextStyle(
            fontSize: 22.0,
            color: Colors.black87,
          )),
          subtitle: Text(characters[index].species + ' - ' + characters[index].status, style: TextStyle(
            fontSize: 15.0,
            color: Colors.black54,
          ))
        ),
    );
      }
    );
  }
}