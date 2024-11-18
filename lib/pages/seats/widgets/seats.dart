import 'package:flutter/material.dart';

class SeatSelectBox extends StatelessWidget {
  final int rowNum = 20;
  final int colNum = 5;
  final int? selectedRow;
  final int? selectedCol;
  final void Function(int row, int col) onSelected;

  SeatSelectBox(this.selectedRow, this.selectedCol, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(rowNum, (index) {
          return Column(
            children: [
              row(index + 1),
              SizedBox(height: 10), // 행 간 간격
            ],
          );
        }),
      ),
    );
  }

  Row row(int rowNum) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(colNum, (index) {
          if (index == 2) {
            return Container(
              width: 33,
              height: 33,
              child: Center(child: Text("$rowNum")),
            );
          }
          return GestureDetector(
            onTap: () {
              onSelected(rowNum, index + 1);
            },
            child: Container(
                width: 55,
                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: rowNum == selectedRow && (index + 1) == selectedCol
                        ? Colors.purple
                        : Colors.grey[400],
                    borderRadius: BorderRadius.circular(10))),
          );

          //if (index != 4) SizedBox(width: 10);
        }));
  }
}
