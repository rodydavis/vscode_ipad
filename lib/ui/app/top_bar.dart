import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.merge_type, size: 18.0),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.sync, size: 18.0),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.desktop_windows, size: 18.0),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.clear, size: 18.0),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
