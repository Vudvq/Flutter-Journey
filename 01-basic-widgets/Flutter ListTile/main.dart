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
    var arraynm=['Aqib','Ahmed','Daniel','Muzammil','Mughees'];

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Flutter Container'),
        ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Container(
          color: Colors.blueGrey,
          child: ListTile(
            leading: Text('${index+1}'),
            title: Text(arraynm[index],style: TextStyle(color: Colors.white),),//array
            subtitle: Text('Number'),//small text displayed under the name  
            trailing: Icon(Icons.add),//You can add different icons here just do iCONS.(something)
          ),
        );

      },


        itemCount: arraynm.length,//whenever we use List view its must to use item count and separator bilder for dividing height and thickness
          separatorBuilder: (context, index) {

            return Container(color: Colors.blueGrey,child: Divider(height: 88,thickness: 1,));//height of screen , thickness is the seperator line thickness
          },



      ),





      );

  }
}
