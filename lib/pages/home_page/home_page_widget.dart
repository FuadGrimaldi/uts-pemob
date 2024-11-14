import '/components/header_widget.dart';
import '/components/icon_mood_widget.dart';
import '/components/slider_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF9FCFF),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 265.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9FCFF),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -2.0),
                      child: wrapWithModel(
                        model: _model.headerModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HeaderWidget(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 199.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF9FCFF),
                  ),
                  child: wrapWithModel(
                    model: _model.sliderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: SliderWidget(),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: 227.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF9FCFF),
                    ),
                    child: wrapWithModel(
                      model: _model.iconMoodModel,
                      updateCallback: () => safeSetState(() {}),
                      child: IconMoodWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
