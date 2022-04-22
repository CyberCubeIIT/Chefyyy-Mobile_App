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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/pngtree-black-minimalist-food-promotion-banner-image_157800.jpg',
                          ).image,
                        ),
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).alternate,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 0, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 25,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      fillColor: Color(0xFFABABAB),
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 25,
                                      borderWidth: 1,
                                      buttonSize: 50,
                                      fillColor: Color(0xFFE7E7E7),
                                      icon: Icon(
                                        Icons.ad_units_outlined,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                      onPressed: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                IngrediantsInputWidget(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        final selectedMedia =
                                            await selectMediaWithSourceBottomSheet(
                                          context: context,
                                          allowPhoto: true,
                                          backgroundColor: Color(0xFFFFBD49),
                                          textColor: Colors.black,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          final downloadUrls =
                                              await Future.wait(
                                                  selectedMedia.map((m) async =>
                                                      await uploadData(
                                                          m.storagePath,
                                                          m.bytes)));
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          if (downloadUrls != null) {
                                            setState(() => uploadedFileUrl =
                                                downloadUrls.first);
                                            showUploadMessage(
                                              context,
                                              'Success!',
                                            );
                                          } else {
                                            showUploadMessage(
                                              context,
                                              'Failed to upload media',
                                            );
                                            return;
                                          }
                                        }
                                      },
                                      text: 'Scan Ingrediants',
                                      icon: Icon(
                                        Icons.control_camera_rounded,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      options: FFButtonOptions(
                                        width: 200,
                                        height: 40,
                                        color: Color(0xFFFFBD49),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                            ),
                                        elevation: 50,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 12,
                                      ),
                                    ).animated([
                                      animationsMap['buttonOnPageLoadAnimation']
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: TextFormField(
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textController',
                                  Duration(milliseconds: 500),
                                  () => setState(() {}),
                                ),
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Search by Ingrediants',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFA2A2A2),
                                  suffixIcon: textController.text.isNotEmpty
                                      ? InkWell(
                                          onTap: () => setState(
                                            () => textController.clear(),
                                          ),
                                          child: Icon(
                                            Icons.clear,
                                            color: Color(0xFF757575),
                                            size: 22,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: StreamBuilder<List<NewRecipesRecord>>(
                        stream: queryNewRecipesRecord(
                          queryBuilder: (newRecipesRecord) => newRecipesRecord
                              .where('recipeIngredientParts',
                                  arrayContains: valueOrDefault<String>(
                                    textController.text,
                                    'onions',
                                  ))
                              .orderBy('aggregatedRating', descending: true),
                          limit: 20,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitHourGlass(
                                  color: Color(0xFF34E061),
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          List<NewRecipesRecord> listViewNewRecipesRecordList =
                              snapshot.data;
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewNewRecipesRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewNewRecipesRecord =
                                  listViewNewRecipesRecordList[listViewIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            RecipeDetailsWidget(
                                          name: listViewNewRecipesRecord.name,
                                          authorName: listViewNewRecipesRecord
                                              .authorName,
                                          calories:
                                              listViewNewRecipesRecord.calories,
                                          carbohydrateContent:
                                              listViewNewRecipesRecord
                                                  .carbohydrateContent,
                                          cholesterolContent:
                                              listViewNewRecipesRecord
                                                  .cholesterolContent,
                                          description: listViewNewRecipesRecord
                                              .description,
                                          fatContent: listViewNewRecipesRecord
                                              .fatContent,
                                          fiberContent:
                                              listViewNewRecipesRecord.calories,
                                          proteinContent:
                                              listViewNewRecipesRecord
                                                  .proteinContent,
                                          recipeIngredientQuantities:
                                              listViewNewRecipesRecord,
                                          recipeInstructions:
                                              listViewNewRecipesRecord,
                                          saturatedFatContent:
                                              listViewNewRecipesRecord
                                                  .saturatedFatContent,
                                          sodiumContent:
                                              listViewNewRecipesRecord
                                                  .sodiumContent,
                                          sugarContent: listViewNewRecipesRecord
                                              .sugarContent,
                                          image: listViewNewRecipesRecord.image,
                                          aggregatedRating:
                                              listViewNewRecipesRecord
                                                  .aggregatedRating,
                                          index: listViewNewRecipesRecord.index,
                                          docRef: listViewNewRecipesRecord,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: Color(0xFFF5F5F5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.63,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 20,
                                                                  0, 20),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Wrap(
                                                            spacing: 0,
                                                            runSpacing: 0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Text(
                                                                listViewNewRecipesRecord
                                                                    .name,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          RatingBarIndicator(
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    Icon(
                                                              Icons
                                                                  .star_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                            ),
                                                            direction:
                                                                Axis.horizontal,
                                                            rating: listViewNewRecipesRecord
                                                                .aggregatedRating,
                                                            unratedColor: Color(
                                                                0xFF9E9E9E),
                                                            itemCount: 5,
                                                            itemSize: 20,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 10, 5),
                                          child: Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.network(
                                                listViewNewRecipesRecord.image,
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
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
