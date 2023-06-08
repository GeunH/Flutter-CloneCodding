import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  final num number;
  final Color bgcolor;
  final Color textColor;
  const Box(this.number, this.bgcolor, this.textColor, {super.key});
  @override
  State<Box> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    final number = widget.number;
    final bgcolor = widget.bgcolor;
    final textColor = widget.textColor;
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgcolor,
      ),
      child: Text(
        '$number',
        style: TextStyle(
          color: textColor,
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
