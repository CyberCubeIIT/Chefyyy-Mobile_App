import '../core_components/theme.dart';
import '../core_components/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({
    Key key,
    this.recipe,
  }) : super(key: key);

  final String recipe;

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello World',
      style: FlutterFlowTheme.of(context).bodyText1,
    );
  }
}
