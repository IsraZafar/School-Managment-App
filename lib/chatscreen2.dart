import 'package:flutter/material.dart';

class Chatscreen2 extends StatefulWidget {
  final String name;
  final String amount;

  const Chatscreen2({super.key, required this.name, required this.amount});

  @override
  State<Chatscreen2> createState() => _Chatscreen2State();
}

class _Chatscreen2State extends State<Chatscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Communication With Another Student",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          _buildMessage(
            message: "Hello Student",
            isSent: false,
          ),
          _buildMessage(
            message: "How are you",
            isSent: true,
          ),
          _buildMessage(
            message: "I am Fine",
            isSent: true,
          ),
          _buildMessage(
            message: "Thank you Teacher",
            isSent: false,
          ),
          _buildMessage(
            message: "How is The Study Going",
            isSent: false,
          ),
          _buildMessage(
            message: "Good",
            isSent: false,
          ),
        ],
      ),
    );
  }

  Widget _buildMessage({required String message, required bool isSent}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment:
            isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSent) ...[
            CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text("J"),
              foregroundColor: Colors.green,
            ),
            SizedBox(width: 8),
          ],
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              gradient: isSent
                  ? LinearGradient(
                      colors: [Color(0xFFB2FF59), Color(0xFF76FF03)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : LinearGradient(
                      colors: [Color(0xFFCFD8DC), Color(0xFFB0BEC5)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: TextStyle(fontSize: 17),
            ),
          ),
          if (isSent) ...[
            SizedBox(width: 8),
            CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text("I"),
              foregroundColor: Colors.white,
            ),
          ],
        ],
      ),
    );
  }
}