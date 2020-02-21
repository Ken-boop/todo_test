import 'package:flutter/material.dart';
import 'package:todo_test/models/brew.dart';

class BrewTile extends StatelessWidget {

  // Brewクラスの変数brew定義
  final Brew brew;
  // メソッドが実行された時に引数に渡された値はこれですよと
  BrewTile({ this.brew });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            // 色合いを数値化する時に[brew.strength]使うことで引数に入ったbrewのstrength値を取得し、色の数値にしている
            backgroundColor: Colors.brown[brew.strength],
            backgroundImage: AssetImage('assets/coffee_icon.png'),
          ),
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} sugar(s)'),
        ),
      ),
    );
  }
}
