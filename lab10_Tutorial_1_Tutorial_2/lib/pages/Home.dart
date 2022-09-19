import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  void initState(){
    super.initState();
    print("init state in Home");
  }
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Widget build in Home");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab 10 tutorial 1&2"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(left:100,bottom: 20),child:const Text("Home Screen",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.deepOrangeAccent),)),
            TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/location');
            },
            icon: Icon(Icons.edit_location),
              label: Text('Choose'),
            ),
            TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/loading');
            },
              icon: Icon(Icons.edit_location),
              label: Text('Loading'),
            ),
            Text("Current value of counter: $_counter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 25),)
            ,
            MaterialButton(onPressed: (){
              setState(() {
                _counter++;
              });
            },
              color: Colors.green,
              colorBrightness:Brightness.dark,
              textColor: Colors.amber,
              child: const Text("++Counter"),
            ),
            const Text(""),
            MaterialButton(onPressed: (){
              setState(() {
                if(_counter != 0) {
                  _counter--;
                }
              });
            },
              color: Colors.redAccent,
              colorBrightness:Brightness.dark,
              textColor: Colors.amber,
              child: const Text("--Counter"),
            )
          ],
        )
    );
  }
}