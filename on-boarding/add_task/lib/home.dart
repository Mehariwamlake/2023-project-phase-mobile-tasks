import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(0),
            width: screen.width,
            height: screen.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/stick-man-painting-on-canvas.png'),
                fit: BoxFit.fitWidth,
              ),
              color: Color.fromRGBO(238, 111, 87, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            )));
  }
}
