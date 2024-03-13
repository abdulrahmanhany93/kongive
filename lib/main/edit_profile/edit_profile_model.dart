import '/backend/api_requests/api_calls.dart';
import '/components/button_widget.dart';
import '/components/profile_text_feild_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (User Profile)] action in edit_profile widget.
  ApiCallResponse? userData;
  // Model for profile_text_feild component.
  late ProfileTextFeildModel profileTextFeildModel1;
  // Model for profile_text_feild component.
  late ProfileTextFeildModel profileTextFeildModel2;
  // Model for profile_text_feild component.
  late ProfileTextFeildModel profileTextFeildModel3;
  // Model for profile_text_feild component.
  late ProfileTextFeildModel profileTextFeildModel4;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    profileTextFeildModel1 =
        createModel(context, () => ProfileTextFeildModel());
    profileTextFeildModel2 =
        createModel(context, () => ProfileTextFeildModel());
    profileTextFeildModel3 =
        createModel(context, () => ProfileTextFeildModel());
    profileTextFeildModel4 =
        createModel(context, () => ProfileTextFeildModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    profileTextFeildModel1.dispose();
    profileTextFeildModel2.dispose();
    profileTextFeildModel3.dispose();
    profileTextFeildModel4.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
