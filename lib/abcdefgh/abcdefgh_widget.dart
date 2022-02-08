import '../components/ingrediants_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AbcdefghWidget extends StatefulWidget {
  const AbcdefghWidget({Key key}) : super(key: key);

  @override
  _AbcdefghWidgetState createState() => _AbcdefghWidgetState();
}

class _AbcdefghWidgetState extends State<AbcdefghWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: IngrediantsWidget(),
      ),
    );
  }
}
