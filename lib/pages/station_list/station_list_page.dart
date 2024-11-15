import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final bool isFrom;
  StationListPage({required this.isFrom});

  final List<String> stations = [
    "수서",
    "동탄",
    "평택지제",
    "천안아산",
    "오송",
    "대전",
    "김천구미",
    "동대구",
    "경주",
    "울산",
    "부산"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(isFrom ? "출발역" : "도착역")),
        body: ListView.builder(
          itemCount: stations.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(stations[index]),
                //tileColor: index % 2 == 0 ? Colors.amber : Colors.blue,
                onTap: () {
                  Navigator.pop(context, stations[index]);
                });
          },
        ));
  }
}
