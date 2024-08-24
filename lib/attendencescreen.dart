import 'package:flutter/material.dart';
import 'package:managmentappschool/timetable.dart';

class Attendencescreen extends StatefulWidget {
  const Attendencescreen({super.key});

  @override
  State<Attendencescreen> createState() => _AttendencescreenState();
}

class _AttendencescreenState extends State<Attendencescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.pink],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'CLASS ATTENDENCE SHEET',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.blue,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 140),
                    Image.asset('assets/images/excel.png'),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Timetable(),
                          ),
                        );
                      },
                      child: Text("Next"),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
