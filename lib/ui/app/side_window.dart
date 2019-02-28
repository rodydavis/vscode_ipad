import 'package:flutter/material.dart';
import 'package:tree_view/tree_view.dart';

class SideWindow extends StatelessWidget {
  const SideWindow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 300.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                "Explorer",
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ExpansionTile(
                      title: Text("Open Editors"),
                      children: <Widget>[
                        ListTile(
                          dense: true,
                          trailing: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {},
                          ),
                          title: Text('settings_screen.dart'),
                        ),
                        ListTile(
                          trailing: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {},
                          ),
                          dense: true,
                          title: Text('main.dart'),
                        ),
                        ListTile(
                          trailing: IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {},
                          ),
                          dense: true,
                          title: Text('routes.dart'),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Project Name"),
                      children: <Widget>[
                        Container(
                          height: 400.0, // Calulate Based on Items
                          child: TreeView(
                            hasScrollBar: true,
                            parentList: [
                              Parent(
                                parent: ListTile(
                                  dense: true,
                                  leading: Icon(Icons.arrow_drop_down),
                                  title: Text('lib'),
                                ),
                                childList: ChildList(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Parent(
                                        parent: ListTile(
                                          dense: true,
                                          leading: Icon(Icons.arrow_drop_down),
                                          title: Text('ui'),
                                        ),
                                        childList: ChildList(
                                          children: <Widget>[
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title: Text(
                                                    'settings_screen.dart'),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title: Text('home_screen.dart'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Parent(
                                        parent: ListTile(
                                          dense: true,
                                          leading: Icon(Icons.arrow_drop_down),
                                          title: Text('data'),
                                        ),
                                        childList: ChildList(
                                          children: <Widget>[
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title:
                                                    Text('local_storage.dart'),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title: Text('model.dart'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Parent(
                                        parent: ListTile(
                                          dense: true,
                                          leading: Icon(Icons.arrow_drop_down),
                                          title: Text('redux'),
                                        ),
                                        childList: ChildList(
                                          children: <Widget>[
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title: Text('reducer.dart'),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title: Text('state.dart'),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 16.0),
                                              child: ListTile(
                                                dense: true,
                                                title: Text('actions.dart'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: ListTile(
                                        dense: true,
                                        title: Text('main.dart'),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: ListTile(
                                        dense: true,
                                        title: Text('keys.dart'),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: ListTile(
                                        dense: true,
                                        title: Text('routes.dart'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Parent(
                                parent: ListTile(
                                  leading: Icon(Icons.arrow_drop_down),
                                  dense: true,
                                  title: Text('ios'),
                                ),
                                childList: null,
                              ),
                              Parent(
                                parent: ListTile(
                                  leading: Icon(Icons.arrow_drop_down),
                                  dense: true,
                                  title: Text('android'),
                                ),
                                childList: null,
                              ),
                              Parent(
                                parent: ListTile(
                                  dense: true,
                                  title: Text('pubspec.yaml'),
                                ),
                                childList: null,
                              ),
                              Parent(
                                parent: ListTile(
                                  dense: true,
                                  title: Text('README.md'),
                                ),
                                childList: null,
                              ),
                              Parent(
                                parent: ListTile(
                                  dense: true,
                                  title: Text('LICENSE'),
                                ),
                                childList: null,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Outline"),
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 16.0),
                          child: ListTile(
                            dense: true,
                            title: Text('Filter'),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Dependencies"),
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 16.0),
                          child: ListTile(
                            dense: true,
                            title: Text('async'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16.0),
                          child: ListTile(
                            dense: true,
                            title: Text('boolen_selector'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 16.0),
                          child: ListTile(
                            dense: true,
                            title: Text('cupertino_icons'),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text("Maven Projects"),
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 16.0),
                          child: ListTile(
                            dense: true,
                            title: Text('No Maven Projects Found'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
