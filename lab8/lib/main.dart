import 'Quotes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 19;
  List<Quotes> q = [
    Quotes(text: 'The truth is realy pure and never simple',author:
    'Yash'),
    Quotes(author: 'Yash', text: 'I see humans but no humanity'),
    Quotes(text: 'The time is always right to do what is right',author:
    'Yash'),
  ];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,

                color: Colors.deepPurple,

              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,

                color: Colors.deepPurple,

              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: const Text("Lab 8 Tutorial 1&2"),
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
          ),
          //LAB 8 Tutorial 1
          // body: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Padding(
          //         padding: EdgeInsets.all(50),
          //         child: const Text("only padding, hello!"),
          //     ),
          //   ],
          // )
          // body: Row(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left:5),
          //       child: Container(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.only(top:20,bottom:20),
          //         child: const Text("Inside Container")
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(),
          //       child: Container(
          //           color: Colors.blueGrey,
          //           padding: EdgeInsets.all(20.0),
          //           child: const Text("Inside Container")
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(left:0),
          //       child: Container(
          //           color: Colors.red,
          //           padding: EdgeInsets.all(20.0),
          //           child: const Text("Inside Container")
          //       ),
          //     )
          //   ],
          // )

          //                                   Lab 8 Tutorial 2
         /* body: Container(
            margin: EdgeInsets.only(left:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: const EdgeInsets.only(),
                    child:  Image(image: AssetImage("assets/pr.png"),
                      height: 120,
                    )
                ),
                const Text("Name:",style: TextStyle(color:Colors.amber, fontWeight: FontWeight.bold,fontSize: 20)),
                Container(margin: EdgeInsets.only(left:20),child: const Text("Yash Gandhi",style: TextStyle(color:Colors.purple, fontWeight: FontWeight.bold,fontSize:  30))),
              const Text(""),
                const Text("Age:",style: TextStyle(color:Colors.amber, fontWeight: FontWeight.bold,fontSize: 20)),
                Container(margin: EdgeInsets.only(left:20),child: Text("$_counter",style: TextStyle(color:Colors.purple, fontWeight: FontWeight.bold,fontSize: 30))),
                const Text(""),
                const Text(""),
                const Text("GitHub:",style: TextStyle(color:Colors.amber, fontWeight: FontWeight.bold,fontSize: 20)),
                Container(margin: EdgeInsets.only(left:20),child: const Text("Yash Gandhi",style: TextStyle(color:Colors.purple, fontWeight: FontWeight.bold,fontSize:20))),
                MaterialButton(onPressed: _incrementCounter,color: Colors.blueAccent,textColor: Colors.white,child: const Text("Increment")),
                const Text(""),
                MaterialButton(onPressed: _decrementCounter,color: Colors.blueAccent,textColor: Colors.white,child: const Text("Decrement"))
              ],
            ),
          ),*/
          body: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Column(
                    children: q.map((e) => quoteTemplate(e)).toList(),
                  ),
                ),
              );
            },
          )
        )
    );
  }
}

/*
class Test1 extends StatefulWidget{
  const Test1({Key? key}):super(key:key);
  @override
  State<Test1> createState()=> _Test1State();
}

class _Test1State extends State<Test1>{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}*/
/*
Column(
children: q.map((e) => quoteTemplate(e)).toList(),
),*/
