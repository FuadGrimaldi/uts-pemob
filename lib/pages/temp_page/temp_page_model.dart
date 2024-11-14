import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'temp_page_widget.dart' show TempPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TempPageModel extends FlutterFlowModel<TempPageWidget> {
  ///  Local state fields for this page.

  double? answer = 0.0;

  double? celciusValue = 0.0;

  double? fahrenhaitValue = 0.0;

  double? kelvinValue = 0.0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for inputTemp widget.
  FocusNode? inputTempFocusNode;
  TextEditingController? inputTempTextController;
  String? Function(BuildContext, String?)? inputTempTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTempFocusNode?.dispose();
    inputTempTextController?.dispose();
  }
}
