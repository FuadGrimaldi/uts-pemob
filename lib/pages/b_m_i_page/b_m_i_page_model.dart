import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'b_m_i_page_widget.dart' show BMIPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BMIPageModel extends FlutterFlowModel<BMIPageWidget> {
  ///  Local state fields for this page.

  double? answer = 0.0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for inputHeight widget.
  FocusNode? inputHeightFocusNode;
  TextEditingController? inputHeightTextController;
  String? Function(BuildContext, String?)? inputHeightTextControllerValidator;
  // State field(s) for inputWeight widget.
  FocusNode? inputWeightFocusNode;
  TextEditingController? inputWeightTextController;
  String? Function(BuildContext, String?)? inputWeightTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputHeightFocusNode?.dispose();
    inputHeightTextController?.dispose();

    inputWeightFocusNode?.dispose();
    inputWeightTextController?.dispose();
  }
}
