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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shopping App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shopa'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
            IconButton(icon: Icon(Icons.settings, color: Colors.white), onPressed: (){}),
          ],
          leading: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: (){}),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 3),
            boxShadow: const [
              BoxShadow(
                offset: Offset(3,6),
                blurRadius: 10,
                color: Colors.black
              )
            ]
          ),
          margin: const EdgeInsets.all(10),
          child: const Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Welcome', style: TextStyle(fontSize: 40))
              ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: (){},
        ),
      ),
    );
  }
}

