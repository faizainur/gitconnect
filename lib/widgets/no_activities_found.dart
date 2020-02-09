import 'package:flutter/material.dart';

class NoActivitiesFoundItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xff2d2d2d),
        borderRadius: BorderRadius.circular(5)
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 10,
        child: Center(
          child: Text(
            "Be more active pls :)",
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xffe7e7e7),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
