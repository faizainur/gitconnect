import 'package:flutter/material.dart';

class ShowMoreActivitiesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          color: const Color(0xff2d2d2d),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 10,
          child: Center(
            child: Text(
              "Show more",
              style: TextStyle(
                fontSize: 12,
                color: const Color(0xffe7e7e7),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      onTap: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Hello Snack"),
          ),
        );
      },
    );
  }
}
