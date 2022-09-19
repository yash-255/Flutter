import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int _counter = 0;
  dynamic message = "";
  void _plus(){
    setState(() {
      _counter++;
    });
  }
  void _minus(){
    setState(() {
      _counter--;
    });
  }
  @override
  void initState(){
    super.initState();
    print("init state function in choose location page");
  }

  void getData() async {
      /*Future.delayed(Duration(seconds: 3),(){
        setState(() {
          print("In getData()");
          message="counter is $_counter";
          _counter++;
        });
        print("After getData() ends...");*/
    String username = await Future.delayed(Duration(seconds: 4), () {
      return 'UNIVERSITY NAME : DDU';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return '''DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER
      ENGINEERING STUDY''';
    });
    print('$username -> $bio');
      }

  @override
  Widget build(BuildContext context) {
    print("build function in choose location");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(left:70,top:100),
          child: Text('CHOOSE LOCATION SCREEN',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
          Text(""),
          Text(""),
          Text(""),
          MaterialButton(onPressed: (){
            getData();
          },color:Colors.redAccent,textColor: Colors.amber,child: Text("Get Info"),)
      ]
      ),
    );
  }
}