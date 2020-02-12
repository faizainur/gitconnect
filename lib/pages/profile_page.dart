import 'package:flutter/material.dart';
import 'package:git_connect/widgets/pinned_repos_item.dart';
import 'package:responsive_text_field/responsive_text_field.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  PanelController _panelController = PanelController();

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
      body: DefaultTabController(
        length: 5,
        child: SlidingUpPanel(
          controller: _panelController,
          // parallaxEnabled: true,
          // color: Color(0xff50565B),
          color: Colors.grey[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          minHeight: 0,
          maxHeight: MediaQuery.of(context).size.height,
          panel: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 2,
                  width: 50,
                  child: Container(
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.green[700]),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  flex: 1,
                  child: TabBar(
                    indicatorColor: Colors.green[700],
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    labelStyle: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3),
                    labelPadding: EdgeInsets.symmetric(horizontal: 2),
                    tabs: <Widget>[
                      Tab(
                        text: "Repositories",
                        // child: Text("Repositories"),
                      ),
                      Tab(
                        text: "Projects",
                      ),
                      Tab(
                        text: "Stars",
                      ),
                      Tab(
                        text: "Followers",
                      ),
                      Tab(
                        text: "Following",
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: MediaQuery.of(context).size.width,
                //   height: 2,
                //   child: Container(
                //     color: Colors.green[700],
                //   ),
                // ),
                Expanded(
                  flex: 20,
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        // color: Colors.red,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              TextField(decoration: InputDecoration(
                                // contentPadding: EdgeInsets.all(-5)
                              ),)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.black,
                        child: Center(
                          child: Text("Hello"),
                        ),
                      ),
                      Container(
                        // color: Colors.blue,
                        child: Center(
                          child: Text("Hello"),
                        ),
                      ),
                      Container(
                        // color: Colors.purple,
                        child: Center(
                          child: Text("Hello"),
                        ),
                      ),
                      Container(
                        // color: Colors.green,
                        child: Center(
                          child: Text("Hello"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            // width: MediaQuery.of(context).size.width,
            color: Color(0xff111111),
            child: Stack(
              children: <Widget>[
                ListView(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Faiz Ainur Rofiq",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "faizainur",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Web Developer | UI/UX Designer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Indonesia",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "fs.rofiq@gmail.com",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Pinned",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                PinnedReposItem(),
                                PinnedReposItem(),
                                PinnedReposItem(),
                                // PinnedReposItem(),
                                // PinnedReposItem(),
                                // PinnedReposItem(),
                                //               FlatButton(
                                //   child: Text("Show more"),
                                //   color: Colors.green,
                                //   onPressed: () {},
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    )
                  ],
                ),
                Positioned(
                  bottom: 80,
                  right: (MediaQuery.of(context).size.width - 100) / 2,
                  left: (MediaQuery.of(context).size.width - 100) / 2,
                  child: ButtonTheme(
                    height: 25,
                    minWidth: 88,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "See more",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      color: Colors.green[700],
                      onPressed: () {
                        _panelController.animatePanelToPosition(0.5);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
