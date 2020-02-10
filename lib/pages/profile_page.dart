import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff111111),
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xff111111),
        child: Column(
          children: <Widget>[
            Text("Adad"),
          ],
        ),
      ),
    );
  }
}
