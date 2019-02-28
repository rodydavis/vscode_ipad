import 'package:flutter/material.dart';

import '../app/layouts/tablet_desktop.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:  TabletDesktopLayout(),
      ),
    );
  }
}
