import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButtons extends StatelessWidget {
  const MenuButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.content_copy),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.device_hub),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.bug),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.plug),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.timer),
                onPressed: () {},
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
