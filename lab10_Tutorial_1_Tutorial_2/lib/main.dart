import 'Quotes.dart';
import 'package:lab10_t1_t2/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:lab10_t1_t2/pages/choose_location.dart';
import 'package:lab10_t1_t2/pages/loading.dart';
//void main()=> runApp(MaterialApp(home:Home(),));
void main(){
  return runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
        '/loading':(context)=>Loading(),
      }
  ));
}
/*class MyApp extends StatelessWidget {
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
  *//*int _counter = 19;
  List<Quotes> q = [
    Quotes("Be yourself; everyone else is already taken.", "Oscar Wilde"),
    Quotes("Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.", "Albert Einstein"),
    Quotes("Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.", "Bernard M. Baruch"),
    Quotes("If you want to know what a man's like, take a good look at how he treats his inferiors, not his equals.", " J.K. Rowling"),
    Quotes("If you tell the truth, you don't have to remember anything.", "Mark Twain"),
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
*//*
*//*
  Widget quoteTemplate(quote,delete){
    return QuoteCard(quote: quote,delete:delete);
  }
*//*

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //                                Lab 9 Tutorial 1
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Lab 9 Tutorial 1&2"),
              centerTitle: true,
              backgroundColor: Colors.orangeAccent,
            ),
             *//*
            body: LayoutBuilder(
              builder:
                  (BuildContext context, BoxConstraints viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                    child: Column(
                      children: q.map((e) => QuoteCard(quote: e,delete: () {
                        setState(() {
                          q.remove(e);
                        });
                      },)).toList(),
                    ),
                  ),
                );
              },
            )*//*
          //                              Lab 9 Tutorial 2
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(left:100,bottom: 20),child:const Text("Home Screen",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.deepOrangeAccent),)),
            ],
          )
        )
    );
  }
}*/

/*class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final VoidCallback delete;
  const QuoteCard({
    required this.quote,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 8.0,),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete Quote'),
            ),
          ],
        ),
      ),
    );
  }
}*/