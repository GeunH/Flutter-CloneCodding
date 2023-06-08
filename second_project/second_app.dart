import 'package:flutter/material.dart';
import 'package:gogo/widgets/do_box.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0x00313131),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/images/abc.png',
                        scale: 2,
                      ),
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'MONDAY 16',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'TODAY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            height: 10,
                            width: 10,
                            color: const Color.fromARGB(255, 194, 24, 143),
                          ),
                        ),
                        Text(
                          '17  18  19  20',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 37,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Do_box(
                      sM: '11',
                      sD: '30',
                      eM: '12',
                      eD: '20',
                      text: 'DESIGN\nMEETING',
                      a: 'ALEX',
                      b: 'HELENA',
                      c: 'NANA',
                      bgColor: Color.fromARGB(255, 254, 248, 84),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff9C6bce),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      height: 170,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            const Column(
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '35',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '|',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                                Text(
                                  '14',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '10',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Column(
                              children: [
                                const Text(
                                  'DAILY\nPROJECT',
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Row(
                                  children: [
                                    const Text(
                                      'ME',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(width: 30),
                                    Text(
                                      'RICHARD',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(width: 30),
                                    Text(
                                      'CIRY',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(width: 30),
                                    Text(
                                      '+4',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Do_box(
                      sM: '15',
                      sD: '00',
                      eM: '16',
                      eD: '30',
                      text: 'WEEKLY\nPLANNING',
                      a: 'DEN',
                      b: 'NANA',
                      c: 'MARK',
                      bgColor: Color.fromARGB(255, 188, 238, 75),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
