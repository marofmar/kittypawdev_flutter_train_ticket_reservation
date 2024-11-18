import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    super.key,
    required this.context,
    required this.text,
    required this.isSelected,
  });

  final BuildContext context;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
                color: isSelected
                    ? Theme.of(context).highlightColor
                    : Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(10))),
        SizedBox(width: 2),
        Text(text),
      ],
    );
  }
}
