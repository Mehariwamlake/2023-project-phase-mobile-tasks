import 'package:flutter/material.dart';

class Articlepage extends StatelessWidget {
  const Articlepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
          
        },
        color: Colors.black,),
        backgroundColor: Colors.white,
        title: const Text('New Article',
        style: TextStyle(color: Colors.black),
        ),
        ),

      body: Container(
        
      ),

    );
  }
}