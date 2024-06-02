import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
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
        primarySwatch: Colors.green,

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
  var emailtext = TextEditingController();//making a variable that will store the email that user entered
  var passtext = TextEditingController();
  @override
  Widget build(BuildContext context) {

var time=DateTime.now();
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Flutter Container'),
        ),
      body:Center(
        child: Container(
            width: 200,
            height: 200,
            child: Column(
              children: [
                Text('Current Time: ${DateFormat('Hms').format(time)}',style: TextStyle(fontSize: 21),),
                ElevatedButton(onPressed: (){
                  setState(() {

                  });

                }, child: Text('Current Time'))
              ],
            )),

      )



        );



  }
}
