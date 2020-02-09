import 'package:flutter/material.dart';
import 'package:git_connect/widgets/explore_item_card.dart';
import 'package:git_connect/widgets/no_activities_found.dart';
import 'package:git_connect/widgets/recent_activity_item.dart';
import 'package:git_connect/widgets/show_more_activities.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int activities = 3;
  List<Widget> activitiesList = List<Widget>();

  ShowMoreActivitiesButton showMoreActivitiesButton =
      ShowMoreActivitiesButton();

  NoActivitiesFoundItem noActivitiesFoundItem = NoActivitiesFoundItem();

  void fetchActivities() {
    if (activitiesList.contains(showMoreActivitiesButton)) {
      activitiesList.remove(showMoreActivitiesButton);
    }
    if (activitiesList.contains(noActivitiesFoundItem)) {
      activitiesList.remove(noActivitiesFoundItem);
    }
    setState(() {
      if (activitiesList.length == 0) {
        activitiesList.add(RecentActivityItem(
          first: true,
        ));
      } else if (activitiesList.length < 4) {
        activitiesList.add(RecentActivityItem(
          first: false,
        ));
      }
      activitiesList.add(showMoreActivitiesButton);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (activitiesList.length == 0) {
      activitiesList.add(noActivitiesFoundItem);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff111111),
          title: Center(
            child: Text(
              "GitConnect",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 1
              ),
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
              onPressed: () {
                fetchActivities();
              },
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
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Column(children: activitiesList),
              SizedBox(
                height: 10,
              ),
              Text(
                "Explore repositories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ExploreItemCard(),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ExploreItemCard(),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ExploreItemCard(),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
