import '/components/header_widget.dart';
import '/components/icon_mood_widget.dart';
import '/components/slider_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for slider component.
  late SliderModel sliderModel;
  // Model for iconMood component.
  late IconMoodModel iconMoodModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    sliderModel = createModel(context, () => SliderModel());
    iconMoodModel = createModel(context, () => IconMoodModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    sliderModel.dispose();
    iconMoodModel.dispose();
  }
}
