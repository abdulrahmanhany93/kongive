import '/components/button_widget.dart';
import '/components/normal_text_feild_widget.dart';
import '/components/password_text_feild_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for normal_text_feild component.
  late NormalTextFeildModel normalTextFeildModel;
  // Model for password_text_feild component.
  late PasswordTextFeildModel passwordTextFeildModel1;
  // Model for password_text_feild component.
  late PasswordTextFeildModel passwordTextFeildModel2;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    normalTextFeildModel = createModel(context, () => NormalTextFeildModel());
    passwordTextFeildModel1 =
        createModel(context, () => PasswordTextFeildModel());
    passwordTextFeildModel2 =
        createModel(context, () => PasswordTextFeildModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    normalTextFeildModel.dispose();
    passwordTextFeildModel1.dispose();
    passwordTextFeildModel2.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
