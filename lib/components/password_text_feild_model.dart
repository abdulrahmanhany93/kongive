import '/flutter_flow/flutter_flow_util.dart';
import 'password_text_feild_widget.dart' show PasswordTextFeildWidget;
import 'package:flutter/material.dart';

class PasswordTextFeildModel extends FlutterFlowModel<PasswordTextFeildWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
