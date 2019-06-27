import 'package:flutter/material.dart';
import 'package:mobile_ide/utils/index.dart';

import '../../utils/code/index.dart';

class WorkArea extends StatefulWidget {
  const WorkArea({
    Key key,
  }) : super(key: key);

  @override
  _WorkAreaState createState() => _WorkAreaState();
}

class _WorkAreaState extends State<WorkArea> {
  @override
  void initState() {
    try {
      getExampleCode('buttons_raised', DefaultAssetBundle.of(context))
          .then<void>((String code) {
        if (mounted) {
          setState(() {
            _controller.text = code ?? 'Example code not found';
          });
        }
      });
    } catch (e) {
      print("Error laoding assets $e");
    }
    super.initState();
  }

  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    if (_controller.text == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: CustomEditableText(
        maxLines: null,
        controller: _controller,
        backgroundCursorColor: Colors.grey,
        style: TextStyle(color: Colors.black),
        focusNode: _focusNode,
        cursorColor: Colors.blueAccent,
        dartCode: true,
      ),
    );
  }
}
