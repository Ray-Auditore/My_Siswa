import 'package:flutter/material.dart';
import 'package:mysiswa/Inbox.dart';

class Homepage1 extends StatefulWidget {
  final String username;
  const Homepage1({super.key, required this.username});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    const Color headerFooterColor =
        Colors.pinkAccent; // warna sama untuk header & footer

    return Scaffold(
      appBar: AppBar(
        title: const Text("MySiswa"),
        backgroundColor: headerFooterColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inbox()),
              );
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Assalamualaikum, ${widget.username}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text("Semoga Harimu Menyenangkan"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: headerFooterColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.school)),
            const SizedBox(width: 50),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
