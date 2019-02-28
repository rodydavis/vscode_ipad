import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.settings_ethernet, size: 20.0),
                        Container(width: 5.0),
                        Text("master"),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.sync, size: 20.0),
                        ),
                        Container(width: 3.0),
                        Container(
                          padding: EdgeInsets.only(right: 2.0),
                          child: Text("0"),
                        ),
                        Container(
                          child: Icon(Icons.arrow_downward, size: 20.0),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 2.0),
                          child: Text("3"),
                        ),
                        Container(
                          child: Icon(Icons.arrow_upward, size: 20.0),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.error_outline, size: 20.0),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Text("0"),
                        ),
                        Container(width: 2.0),
                        Container(
                          child: Icon(Icons.warning, size: 20.0),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Text("3"),
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    highlightColor: Colors.grey,
                    child: Text("Ln 85, Col 37"),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Text("Spaces: 2"),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Text("UTF-8"),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Text("LF"),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Text("Dart"),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text("Flutter 1.2.3-pre.30"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Text("iPhone X (ios)"),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Icon(
                      Icons.tag_faces,
                      size: 20.0,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.notifications, size: 20.0),
                        Container(width: 5.0),
                        Text("0"),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
