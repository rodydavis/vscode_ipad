import 'package:flutter/material.dart';

import '../windows/debug_console.dart';
import '../windows/output.dart';
import '../windows/problems.dart';
import '../windows/terminal.dart';

class BottomWindow extends StatefulWidget {
  const BottomWindow({
    Key key,
  }) : super(key: key);

  @override
  _BottomWindowState createState() => _BottomWindowState();
}

class _BottomWindowState extends State<BottomWindow>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Flexible(
          flex: 2,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 600.0,
                  child: TabBar(
                    controller: _controller,
                    tabs: <Widget>[
                      Tab(
                        text: "PROBLEMS",
                      ),
                      Tab(
                        text: "OUTPUT",
                      ),
                      Tab(
                        text: "DEBUG CONSOLE",
                      ),
                      Tab(
                        text: "TERMINAL",
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.clear_all),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_drop_up),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 8,
          child: PageView(
            children: <Widget>[
              ProblemWindow(),
              OutputWindow(),
              DebugConsole(),
              TerminalWindow(),
            ],
          ),
        ),
      ],
    ));
  }
}
