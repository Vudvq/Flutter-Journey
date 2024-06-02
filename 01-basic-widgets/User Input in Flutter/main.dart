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


    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text('Flutter Container'),
        ),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
               // keyboardType: TextInputType.phone,//only use this if u want to take phone number as input this will automatically open numpad on keyboard and change the icons
                controller:emailtext ,//if you want to get what the user has entered inside the text box you will use this text controller
              //  enabled: false,
                decoration: InputDecoration(//this is used for giving border a size a color and when we sleect it it changes the color
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),//giving size to make a box
                    borderSide: BorderSide(//used to give a color to border and width
                      color: Colors.orange,
                      width: 2
                    )
                  ),
                  hintText: 'Enter Email',
                  enabledBorder: OutlineInputBorder(//enabled is used to give a default color to borer when we are not using the border
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.blueAccent,
                          width: 2
                      )
                  ),
                  disabledBorder: OutlineInputBorder(//disabled border is used when we dont want to use the enable e.g if i do enabled false the deafult disable will work
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.black45,
                          width: 2
                      )
                  ),
                 // suffixText: "Enter email",//used to add a text on end of a text box
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye), onPressed: () {

                  },
                  ),//if u want to make a button clickable then you haeve to use this iconbutton function
                  prefixIcon: Icon(Icons.email)//used to add something on start of the text box

                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: passtext,
                obscureText: true,//this feature is used to hide the password
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye), onPressed: () {

                    },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange
                      )

                    )

                ),

              ),
           ElevatedButton(onPressed: (){// using this button to store some the data of email and password then printing it on screen

             String uemail = emailtext.text.toString();
             String upass = passtext.text;
             
             print("Email:  $uemail ,Password: $upass ");

           }, child: Text('Login'))

            ],
          ),

        ),
      )



        );



  }
}
