import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../worldtime.dart';
class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
  //                           Lab 10 Tutorial 2
  //void getTime() async {
//
    /*Response response = await
    get(Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map timeData = jsonDecode(response.body);
    print(timeData);
    String dateTime = timeData['datetime'];
    String offset = timeData['utc_offset']; //not dst_offset
    print(dateTime);
    print(offset);
    DateTime currentTime = DateTime.parse(dateTime);
    print(currentTime);
DateTime currentOffset = DateTime.parse(offset);
print(currentOffset);
    String offsetHours = offset.substring(1, 3);
    print(offsetHours);
    String offsetMinutes = offset.substring(4, 6);
    print(offsetMinutes);
    currentTime = currentTime.add(Duration(
        minutes: int.parse(offsetMinutes), hours: int.parse(offsetHours)));
    print(currentTime);*/
 /// }
 /* @override
  void initState() {
    super.initState();
    getTime();
 }*/

String? time = 'LOADING..........';
void setWorldTime() async {
  WordTime timeinstance =
  WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
  await timeinstance.getTime();
// print(timeinstance.time);
  setState(() {
    time = timeinstance.time;
  });
}
@override
void initState() {
  super.initState();
  setWorldTime();
}

//                                 Lab 10 Tutorial 1
 /* void getData() async {
    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/albums/2'));
    print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    print("initState...");
    getData();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Loading Screen"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:110),
        /*child: Text('Loading Screen'),*/
        child: Text(time.toString()),// last part of tutorial 2
      ),
    );
  }
}