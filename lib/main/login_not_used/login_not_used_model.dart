import '/components/button_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/normal_text_feild_widget.dart';
import '/components/password_text_feild_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_not_used_widget.dart' show LoginNotUsedWidget;
import 'package:flutter/material.dart';

class LoginNotUsedModel extends FlutterFlowModel<LoginNotUsedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for normal_text_feild component.
  late NormalTextFeildModel normalTextFeildModel;
  // Model for password_text_feild component.
  late PasswordTextFeildModel passwordTextFeildModel;
  // Model for button component.
  late ButtonModel buttonModel;
  // Model for nav_bar component.
  late NavBarModel navBarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    normalTextFeildModel = createModel(context, () => NormalTextFeildModel());
    passwordTextFeildModel =
        createModel(context, () => PasswordTextFeildModel());
    buttonModel = createModel(context, () => ButtonModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    normalTextFeildModel.dispose();
    passwordTextFeildModel.dispose();
    buttonModel.dispose();
    navBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
