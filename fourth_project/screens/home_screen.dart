import 'package:flutter/material.dart';
import 'dart:async';

import 'package:gogo/widget/box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const fiveminutes = 300;
  static var nowtime = 1500;
  bool isRunning = false;
  int totalSeconds = nowtime;
  late Timer timer;
  int Round = 0;
  int GOAL = 0;
  List<bool> selected = [false, false, true, false, false];

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        Round++;
        isRunning = false;
        totalSeconds = nowtime;
      });
      if (Round == 4) {
        setState(() {
          Round = 0;
          GOAL++;
          totalSeconds = fiveminutes;
        });
      }
      timer.cancel();
    } else {
      setState(() {
        totalSeconds--;
      });
    }
  }

  void timerPressed(int num, int but) {
    for (int i = 0; i < 5; i++) {
      if (i == but) {
        setState(() {
          selected[i] = true;
        });
      } else {
        setState(() {
          selected[i] = false;
        });
      }
    }
    setState(() {
      totalSeconds = num;
      nowtime = num;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'POMOTIMER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        format(totalSeconds).substring(0, 2),
                        style: TextStyle(
                          fontSize: 89,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    ':',
                    style: TextStyle(
                      fontSize: 89,
                      color: Color(0xFFF29288),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        format(totalSeconds).substring(3, 5),
                        style: TextStyle(
                          fontSize: 89,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => timerPressed(900, 0),
                      child: Box(
                        15,
                        selected[0]
                            ? Colors.white
                            : Theme.of(context).colorScheme.background,
                        selected[0]
                            ? Theme.of(context).colorScheme.background
                            : Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => timerPressed(1200, 1),
                      child: Box(
                        20,
                        selected[1]
                            ? Colors.white
                            : Theme.of(context).colorScheme.background,
                        selected[1]
                            ? Theme.of(context).colorScheme.background
                            : Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => timerPressed(1500, 2),
                      child: Box(
                        25,
                        selected[2]
                            ? Colors.white
                            : Theme.of(context).colorScheme.background,
                        selected[2]
                            ? Theme.of(context).colorScheme.background
                            : Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => timerPressed(1800, 3),
                      child: Box(
                        30,
                        selected[3]
                            ? Colors.white
                            : Theme.of(context).colorScheme.background,
                        selected[3]
                            ? Theme.of(context).colorScheme.background
                            : Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => timerPressed(2100, 4),
                      child: Box(
                        35,
                        selected[4]
                            ? Colors.white
                            : Theme.of(context).colorScheme.background,
                        selected[4]
                            ? Theme.of(context).colorScheme.background
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Center(
                child: IconButton(
                  iconSize: 100,
                  color: Colors.white,
                  onPressed: isRunning ? onPausePressed : onStartPressed,
                  icon: Icon(isRunning
                      ? Icons.pause_circle_filled
                      : Icons.play_circle_filled_rounded),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        '$Round/4',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'ROUND',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '$GOAL/12',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'GOAL',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
