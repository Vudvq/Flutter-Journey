import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black45),
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
      body: CircleAvatar(
        backgroundImage: AssetImage('assets/images/image5.jpeg'),//selecting the image for the circuler avatar
        child: Text('Name', style: TextStyle(fontWeight: FontWeight.w200,color: Colors.white )),
          backgroundColor: Colors.green,//background color will apply when the image has no background or a white background

//the following code is if you want to make an application that contains above an image and below is its name it will only work for images with white background
    /*child: Center(
          child: Column(
            children: [
              Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/image7.jpeg')),
              Text('Name')
            ],
          ),
        ),*/
       
        radius: 50, // we can use radius instead of using a container to increase the size of the avatar
        //maxRadius: 50,// the circle wont be longer than 50 whether the size oof image is big or not
        //minRadius: 50,// min 50 is the size it can ake
      )





      );

  }
}
