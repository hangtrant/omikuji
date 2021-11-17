import 'package:flutter/material.dart';
import 'package:omikuji/result_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '今日の運勢を占います',
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ResultPage(title: widget.title)));
                },
                child: const Text(
                  "占う",
                  style: TextStyle(fontSize: 40),
                ))
          ],
        ),
      ),
    );
  }
}
