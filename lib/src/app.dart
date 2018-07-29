import 'package:flutter/material.dart';
import 'package:http/http.dart';
import './model/characterModel.dart';
import './widget/character_list.dart';
import 'dart:convert';

class App extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {

  int counter = 0;
  bool loading = false;
  List<CharacterModel> characters = [];
  
  void fetchCharacter() async {
    counter++;
    var response = await get('https://rickandmortyapi.com/api/character/$counter');
    var characterModel =  CharacterModel.fromJson(json.decode(response.body));
    
    setState(() {
      characters.add(characterModel);
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Ricky and Morty Characters", style: TextStyle(
            color: Colors.white70,
          )),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.redAccent,
          onPressed: fetchCharacter,
        ),
        body: CharacterList(characters),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}