import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Counter App',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      //   useMaterial3: true,
      // ),
      home: const MyHomePage(title: 'Circular Counter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      if (_counter==10){
        _counter = 0;
      }else {
        _counter += 1;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter==0){
        _counter = 10;
      }else {
        _counter -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        color: Colors.blue.shade100,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),

            TextLiquidFill(
              text: '$_counter',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.blue.shade100,
              textStyle: TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 200.0,
              boxWidth: 200,
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                OutlineGradientButton(
                  child: Text('increment ', style: TextStyle(color: Colors.black, fontSize: 10)),
                  gradient: LinearGradient(
                    colors: List.generate(360, (h) => HSLColor.fromAHSL(1, h.toDouble(), 1, 0.5).toColor()),
                  ),
                  strokeWidth: 2,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  radius: Radius.circular(8), onTap: _incrementCounter,

                ),
                SizedBox(
                  width: 20,
                ),
                OutlineGradientButton(
                  child: Text('Decrement', style: TextStyle(color: Colors.black, fontSize: 10)),
                  gradient: LinearGradient(
                    colors: List.generate(360, (h) => HSLColor.fromAHSL(1, h.toDouble(), 1, 0.5).toColor()),
                  ),
                  strokeWidth: 2,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  radius: Radius.circular(8),
                  onTap: _decrementCounter,
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
}
