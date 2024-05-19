import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Flutter Container'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 11),
                           width: 200,
                          height: 200,
                          color: Colors.red,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),

                          width: 200,
                          height: 200,
                          color: Colors.purple,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 11),

                          width: 200,
                          height: 200,
                          color: Colors.teal,
                        ),
                        Container(
                          margin: EdgeInsets.only(right : 11),

                          width: 200,
                          height: 200,
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.cyan,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.amber,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.amberAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.teal,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.redAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.purpleAccent,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),

                  height: 200,
                  color: Colors.black12,
                ),
            
              ],
            ),
          ),
        )





    );
  }
}
