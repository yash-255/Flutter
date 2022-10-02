import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  void getData() async {
// below code is similar like to
// simulate network request for a username
// its just learning how flutter/dart response to Async
    String username = await Future.delayed(Duration(seconds: 4), () {
      return 'UNIVERSITY NAME : DDU';
    });
// print('in getData ...after future call....');
// the following code is depends on 1st one ..but what happened at here?
// suppose it is network simulation request to fetch out the bio-data of..
// user name that is received by 1st request.....



    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY';
    });
    print('$username -> $bio');
  }
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
    print('before getData call');
    getData();
    print('after getData call');
  }
  @override
  Widget build(BuildContext context) {
// print('BUILD FUNCTION RUN IN CHOOSE LOCATION...');
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
// when we come/route from different screen IN APPBAR FLUTTER WILL DEFAULTLY
// PLACED "BACK ARROW <- .....
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
/*
body: ElevatedButton(
onPressed: () {
setState(() {
counter += 1;
});
},
child: Text('COUNTER IS : $counter'),
),
*/
    );
  }
}