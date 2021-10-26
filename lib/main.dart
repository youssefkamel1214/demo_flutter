import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width=100,_hight=50,_radias=50;
  int _color=150;
  void _incrementCounter() {
    setState(() {
      Random random=new Random();
      _width=(random.nextInt(200)).toDouble()+20;
      _hight=(random.nextInt(200)).toDouble()+20;
      _radias=(random.nextInt(200)).toDouble()+20;
      _color=random.nextInt(200);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text('hi'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutBack,
          duration: Duration(seconds: 3),
          width: _width,
          height: _hight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_radias),
            color: Color.fromARGB(_color, _color, _color, 1)
          ),
        )
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.play_arrow),
      ), 
    );
  }
}
