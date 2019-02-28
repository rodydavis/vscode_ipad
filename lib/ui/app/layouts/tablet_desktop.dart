import 'package:flutter/material.dart';

import '../bottom_window.dart';
import '../menu_buttons.dart';
import '../side_window.dart';
import '../status_bar.dart';
import '../top_bar.dart';
import '../work_area.dart';

class TabletDesktopLayout extends StatelessWidget {
  const TabletDesktopLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: MenuButtons(),
        ),
        Flexible(
          flex: 5,
          child: SideWindow(),
        ),
        Flexible(
          flex: 20,
          child: Flex(
            direction: Axis.vertical,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: TopBar(),
              ),
              Flexible(
                flex: 20,
                child: WorkArea(),
              ),
              Flexible(
                flex: 4,
                child: BottomWindow(),
              ),
              Flexible(
                flex: 1,
                child: StatusBar(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
