import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('add task'),
      ),
      body: Container(
        margin: EdgeInsets.all(0),
        color: Color.fromRGBO(238, 111, 87, 1),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/stick-man-painting-on-canvas.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
