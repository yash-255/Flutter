import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;
    print(data);
// set background images
    String bgImage = data['isDayTime'] ? 'day2.jpg' : 'night.jpg';
    Color? appBgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[900];
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/$bgImage'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () async {
                  dynamic result =
                      await Navigator.pushNamed(context, '/location');

                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'isDayTime': result['isDayTime'],
                      'flag': result['flag'],
                    };
                  });
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.grey[300],
                ),
                label: Text(
                  'EDIT LOCATION',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 36.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 70.0,
                  color: Colors.white70,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
