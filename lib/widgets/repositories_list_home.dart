import 'package:flutter/material.dart';
import 'package:git_connect/widgets/repo_list_item_home.dart';

class RepositoriesListHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 338,
      decoration: BoxDecoration(
        color: const Color(0xff2d2d2d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
          bottom: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Repositories",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      letterSpacing: 0.5),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "29",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Text(
                      "Show more",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    onTap: () {
                      print("Show more repos");
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            RepositoryListItemHome(),
            RepositoryListItemHome(),

          ],
        ),
      ),
    );
  }
}
