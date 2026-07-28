import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int counterA = 0;
  int counterB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('Points Counter', style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 32),
                    Text(
                      counterA.toString(),
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 32),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        setState(() {
                          counterA = counterA + 1;
                        });
                      },
                      child: Text('Add 1 Point'),
                    ),

                    SizedBox(height: 16),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        setState(() {
                          counterA = counterA + 2;
                        });
                      },
                      child: Text('Add 2 Point'),
                    ),

                    SizedBox(height: 16),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        setState(() {
                          counterA = counterA + 3;
                        });
                      },
                      child: Text('Add 3 Point'),
                    ),
                  ],
                ),

                SizedBox(
                  height: 340,
                  child: VerticalDivider(color: Colors.grey, thickness: 1),
                ),

                Column(
                  children: [
                    SizedBox(height: 16),
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    SizedBox(height: 32),
                    Text(
                      counterB.toString(),
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 32),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        setState(() {
                          counterB = counterB + 1;
                        });
                      },
                      child: Text('Add 1 Point'),
                    ),

                    SizedBox(height: 16),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        setState(() {
                          counterB = counterB + 2;
                        });
                      },
                      child: Text('Add 2 Point'),
                    ),

                    SizedBox(height: 16),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {
                        setState(() {
                          counterB = counterB + 3;
                        });
                      },
                      child: Text('Add 3 Point'),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 32),

            MaterialButton(
              color: Colors.orange,
              onPressed: () {
                setState(() {
                  counterA = 0;
                  counterB = 0;
                });
              },
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
