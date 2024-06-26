import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/Ui_helper/Text_theme.dart';

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
        primarySwatch: Colors.blue,

            textTheme: TextTheme(
              headlineLarge: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              headlineMedium:  TextStyle(fontSize:10,fontWeight: FontWeight.bold),
              displaySmall: TextStyle(fontSize: 11,fontWeight: FontWeight.bold)
              //   displayLarge1: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              // subtitle2: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)


      )
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
      body:
       Column(
         children: [
           Text('Text1',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.red)),
           Text('Text2',style: Theme.of(context).textTheme.headlineMedium),
           Text('Text3',style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.amber)),
           Text('Text4',style: mTextStyle11(),)
         ],
       ),


        );



  }
}
