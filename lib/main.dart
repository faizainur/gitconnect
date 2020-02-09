import 'package:flutter/material.dart';
import 'package:git_connect/widgets/recent_activity_item.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  int activities = 3;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff111111),
          title: Center(
            child: Text(
              "Git Connect",
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          leading: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          color: Color(0xff111111),
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              Text(
                "Recent activities",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: activities == 3 ? 180 : activities == 2 ? 120 : 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff2d2d2d),
                ),
                child: ListView(
                  children: <Widget>[
                    RecentActivityItem(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
