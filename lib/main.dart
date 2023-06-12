import 'package:flutter/material.dart';
import 'package:login_dashboad_flutter/login.dart';
import 'package:login_dashboad_flutter/registration.dart';

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
      initialRoute: "registration",
      routes: {"login":(context)=>const MyLogin(),
      'registration':(context)=>myregistration()},

      title: 'Login Dashboard',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Login page "),
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
  get hintText => "Your password";



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Column(



          children: const <Widget>[
            SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Densed TextField',
                isDense: true,

              ),
            ),
            Text("Your name ", style: TextStyle(fontSize: 24,color: Colors.black,),textAlign: TextAlign.left,),

            TextField(
              decoration: InputDecoration(
                labelText: "your password",
                  isDense: true,

                  alignLabelWithHint: true,
                  labelStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(borderSide:
                BorderSide(width: 2,color: Colors.deepOrange,),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey
                  )
                )
                )
              ),
          ],
        ),
      ),
    );
  }
}
