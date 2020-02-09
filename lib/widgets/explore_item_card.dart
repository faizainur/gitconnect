import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class ExploreItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff2d2d2d),
          borderRadius: BorderRadius.circular(5)),
      height: 60,
      // width: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: <Widget>[
            Text(
              "flutter/flutter",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  fontSize: 14),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0xff00B4AB),
                  radius: 5,
                ),
                SizedBox(width: 5,),
                Text(
                  "Dart",
                  style: TextStyle(
                    fontSize: 10,
                    // color: Colors.purple[100],
                    color: Colors.grey[400]
                  ),
                )
              ],
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
