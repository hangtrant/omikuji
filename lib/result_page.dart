import 'dart:math';

import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String result = "";
  List<String> uranaiList = ['大吉', '中吉', '小吉', '吉', '末吉', '凶'];

  void uranau() {
    int rand = Random().nextInt(5);
    result = uranaiList[rand];
  }

  @override
  void initState() {
    super.initState();
    uranau();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Text("占い結果"),
          Text(result),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("戻る"),
          ),
        ],
      ),
    );
  }
}
