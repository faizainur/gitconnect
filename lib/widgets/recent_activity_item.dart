import 'package:flutter/material.dart';

class RecentActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(8)
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      // color: Colors.green,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(Icons.ac_unit),
            width: 50,
            color: Colors.blue,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Adding README.md"),
                Text("16 hours ago")
              ],
            ),
          ))
        ],
      ),
    );
  }
}
