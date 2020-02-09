import 'package:flutter/material.dart';

class RecentActivityItem extends StatelessWidget {
  bool first;
  RecentActivityItem({this.first});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: first
            ? BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5))
            : BorderRadius.circular(0),
        color: const Color(0xff2d2d2d),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      // color: Colors.green,
      margin: EdgeInsets.symmetric(
        // horizontal: 10,
        vertical: 0.5,
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.ac_unit,
              color: Colors.green[900],
              size: 30,
            ),
            width: 50,
            // color: Colors.blue,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Adding README.md",
                  style: TextStyle(
                    color: const Color(0xffE7E7E7),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        "faizainur/SudokuGame",
                        style: TextStyle(
                          fontSize: 11,
                          // color: Colors.purple[200],
                          color: Colors.blue[50],
                          // color: Colors.grey[400],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "2 days ago",
                        style: TextStyle(
                          fontSize: 11,
                          // color: Colors.purple[200],
                          color: Colors.blue[50],
                          // color: Colors.grey[400],
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
