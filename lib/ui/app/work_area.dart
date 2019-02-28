import 'package:flutter/material.dart';

import '../../utils/highlighter.dart';
import '../../utils/parser.dart';

class WorkArea extends StatefulWidget {
  const WorkArea({
    Key key,
  }) : super(key: key);

  @override
  _WorkAreaState createState() => _WorkAreaState();
}

class _WorkAreaState extends State<WorkArea> {
  String _exampleCode;

  @override
  void didChangeDependencies() {
    try {
      getExampleCode('buttons_raised', DefaultAssetBundle.of(context))
          .then<void>((String code) {
        if (mounted) {
          setState(() {
            _exampleCode = code ?? 'Example code not found';
          });
        }
      });
    } catch (e) {
      print("Error laoding assets $e");
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();

    Widget body;
    if (_exampleCode == null) {
      body = const Center(child: CircularProgressIndicator());
    } else {
      body = SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                  text: TextSpan(
                      style: const TextStyle(
                          fontFamily: 'monospace', fontSize: 10.0),
                      children: <TextSpan>[
                    DartSyntaxHighlighter(style).format(_exampleCode)
                  ]))));
    }

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          body,
        ],
      ),
    );
  }
}
