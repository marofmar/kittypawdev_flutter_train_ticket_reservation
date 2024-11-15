import 'package:flutter/material.dart';

class SeatsPage extends StatelessWidget {
  final String from; // SatetelessWidget은 Immutable, final로 선언.
  final String to;
  SeatsPage({required this.from, required this.to});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("좌석 선택")),
        body: Column(
          children: [
            Row(
              children: [
                Text(from,
                    style: TextStyle(color: Theme.of(context).highlightColor)),
                Icon(Icons.arrow_circle_right_outlined),
                Text(to,
                    style: TextStyle(color: Theme.of(context).highlightColor)),
              ],
            )
          ],
        ));
  }
}
