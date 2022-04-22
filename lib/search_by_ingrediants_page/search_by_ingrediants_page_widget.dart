import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../core_components/animations.dart';
import '../core_components/icon_button.dart';
import '../core_components/theme.dart';
import '../core_components/util.dart';
import '../core_components/widgets.dart';
import '../core_components/upload_media.dart';
import '../ingrediants_input/ingrediants_input_widget.dart';
import '../recipe_details/recipe_details_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchByIngrediantsPageWidget extends StatefulWidget {
  const SearchByIngrediantsPageWidget({Key key}) : super(key: key);

  @override
  _SearchByIngrediantsPageWidgetState createState() =>
      _SearchByIngrediantsPageWidgetState();
}

class _SearchByIngrediantsPageWidgetState
    extends State<SearchByIngrediantsPageWidget> with TickerProviderStateMixin {
  String uploadedFileUrl = '';
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 1880,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    textController = TextEditingController();
  }

