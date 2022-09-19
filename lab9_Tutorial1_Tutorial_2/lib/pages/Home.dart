import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab 9 tutorial 1&2"),
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
          ],
        )
    );
  }
}