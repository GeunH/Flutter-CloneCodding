import 'package:flutter/material.dart';

class Do_box extends StatelessWidget {
  final String sM, sD, eM, eD, text, a, b, c;
  final Color bgColor;

  const Do_box(
      {super.key,
      required this.sM,
      required this.sD,
      required this.eM,
      required this.eD,
      required this.text,
      required this.a,
      required this.b,
      required this.c,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(40),
      ),
      height: 170,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  sM,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  sD,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const Text(
                  '|',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  eM,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  eD,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Text(
                      a,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      b,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      c,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
