import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_reservation_app/pages/seats/widgets/button.dart';
import 'package:flutter_ticket_reservation_app/pages/seats/widgets/label.dart';
import 'package:flutter_ticket_reservation_app/pages/seats/widgets/seats.dart';

class SeatsPage extends StatefulWidget {
  final String from; // SatetelessWidget은 Immutable, final로 선언.
  final String to;
  SeatsPage({required this.from, required this.to});

  @override
  State<SeatsPage> createState() => _SeatsPageState();
}

class _SeatsPageState extends State<SeatsPage> {
  int? selectedRow; // 처음에는 선택된 값이 없을거기 때문에 nullable
  int? selectedCol;

  void onSelected(int row, int col) {
    setState(() {
      selectedRow = row;
      selectedCol = col;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("좌석 선택")),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(widget.from,
                      style: TextStyle(
                        color: Theme.of(context).highlightColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  Icon(Icons.arrow_circle_right_outlined, size: 30),
                  Text(widget.to,
                      style: TextStyle(
                        color: Theme.of(context).highlightColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Label(context: context, text: " 선택됨", isSelected: true),
                  SizedBox(width: 20),
                  Label(context: context, text: " 선택 안 됨", isSelected: false),
                ],
              ),
              // TODO: 칼럼 번호 ABCD

              // TODO: 좌석 좌르르르르르
              SizedBox(height: 20),
              SeatSelectBox(selectedRow, selectedCol, onSelected),

              SizedBox(height: 10),
              confirmButton()
            ],
          ),
        ));
  }
}
