import '/backend/api_requests/api_calls.dart';
import '/components/button_widget.dart';
import '/components/normal_text_feild_widget.dart';
import '/components/password_text_feild_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'authentication_widget.dart' show AuthenticationWidget;
import 'package:flutter/material.dart';

class AuthenticationModel extends FlutterFlowModel<AuthenticationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for email_text_field.
  late NormalTextFeildModel emailTextFieldModel;
  // Model for password_text_feild component.
  late PasswordTextFeildModel passwordTextFeildModel;
  // Model for button component.
  late ButtonModel buttonModel;
  // Stores action output result for [Backend Call - API (Get token)] action in button widget.
  ApiCallResponse? loginResponse;
  // Stores action output result for [Backend Call - API (Get token)] action in button widget.
  ApiCallResponse? apiResultzvl;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    emailTextFieldModel = createModel(context, () => NormalTextFeildModel());
    passwordTextFeildModel =
        createModel(context, () => PasswordTextFeildModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTextFieldModel.dispose();
    passwordTextFeildModel.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
