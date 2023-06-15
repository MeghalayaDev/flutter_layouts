import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layouts',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Layouts'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // color: Colors.blue,
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(width: 10.0, color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(12.0))),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.center, //change this to see the effect
          children: <Widget>[
            Text(
              'Welcome to the Flutter Layout App',
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
            Icon(
              Icons.apps,
              color: Colors.white,
            ),
            Text(
              'Hello',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.0,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Hello", style: TextStyle(fontSize: 21.0)),
                Icon(Icons.access_time),
                Text("World", style: TextStyle(fontSize: 21.0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
