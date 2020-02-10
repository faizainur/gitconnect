import 'package:flutter/material.dart';

class RepositoryListItemHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 105,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "pharmacy-app-flutter",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: 0.8,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: Text(
                  """This as an app for helping pharmacist organize ther store.""",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 11,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color(0xff00B4AB),
                          radius: 5,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Dart",
                          style: TextStyle(
                              fontSize: 10,
                              // color: Colors.purple[100],
                              color: Colors.grey[400]),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Dart",
                          style: TextStyle(
                              fontSize: 10,
                              // color: Colors.purple[100],
                              color: Colors.grey[400]),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
