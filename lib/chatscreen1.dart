import 'package:flutter/material.dart';
import 'package:managmentappschool/chatscreen2.dart';

class Chatscreen1 extends StatefulWidget {
  const Chatscreen1({super.key});

  @override
  State<Chatscreen1> createState() => _Chatscreen1State();
}

class _Chatscreen1State extends State<Chatscreen1> {
  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "John",
      "Hawkins",
      "Nexlent",
      "Jerry",
      "Tom",
      "Jasmine"
    ];
    List<String> amounts = ["18.00", "16.12", "12.01", "1.00", "17.23", "5.25"];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Communication Chat Screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.separated(
          itemCount: names.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.pink,
              ),
              title: Text(
                names[index],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(amounts[index]),
              onTap: () {
                if (names[index] == "John") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chatscreen2(
                        name: names[index],
                        amount: amounts[index],
                      ),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Chatscreen2(
                name: names[0], // Adjust as needed
                amount: amounts[0], // Adjust as needed
              ),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}
