import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class confirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                        title: Text("예매 하시겠습니까?"),
                        content: Text("좌석 선택 ~"),
                        actions: [
                          CupertinoDialogAction(
                              isDefaultAction: true,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("취소")),
                          CupertinoDialogAction(
                              isDestructiveAction: true, // 빨간 글씨!
                              onPressed: () {
                                Navigator.popUntil(context,
                                    (route) => route.isFirst); // 처음 화면으로 돌아가기
                              },
                              child: Text("확인"))
                        ]);
                  });
            },
            child: Text("예매 하기",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))));
  }
}