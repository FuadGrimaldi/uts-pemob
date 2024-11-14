import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'exam_page_widget.dart' show ExamPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExamPageModel extends FlutterFlowModel<ExamPageWidget> {
  ///  Local state fields for this page.

  double? answer = 0.0;

  double? celciusValue = 0.0;

  double? fahrenhaitValue = 0.0;

  double? kelvinValue = 0.0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for inputExam widget.
  FocusNode? inputExamFocusNode;
  TextEditingController? inputExamTextController;
  String? Function(BuildContext, String?)? inputExamTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputExamFocusNode?.dispose();
    inputExamTextController?.dispose();
  }
}
