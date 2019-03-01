import 'package:flutter/material.dart';
//import 'dart:async';

void main(){
  runApp(MyApp());
  /*
  int index = 0;
  new Timer.periodic(new Duration(seconds: 5), (Timer timer){
    print("main " + index.toString());
    index++;
  });
  */
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  
  @override
  void initState() {
    super.initState();
    //new Timer.periodic(new Duration(seconds: 1), (Timer timer){
    //  _incrementCounter();
    //});
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      //print("counter " + _counter.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            new Image.asset(
                "assets/living.gif",
              width: 30.0,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
