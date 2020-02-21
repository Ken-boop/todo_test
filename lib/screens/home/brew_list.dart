import 'package:flutter/material.dart';
import 'package:todo_test/models/brew.dart';
import 'package:provider/provider.dart';
import 'package:todo_test/screens/home/brew_tile.dart';

class BrewList extends StatefulWidget {
  @override
  _BrewListState createState() => _BrewListState();
}

class _BrewListState extends State<BrewList> {
  @override
  Widget build(BuildContext context) {

    final brews = Provider.of<List<Brew>>(context) ?? [];

    return ListView.builder(
        itemCount: brews.length,
        itemBuilder: (context, index) {
          // BrewTileの中にあるbrewの中身はbrewsリストの中からインデックスでそれぞれ並べられる
          return BrewTile(brew: brews[index]);


        },
    );

  }
}
