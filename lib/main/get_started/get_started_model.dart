import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'get_started_widget.dart' show GetStartedWidget;
import 'package:flutter/material.dart';

class GetStartedModel extends FlutterFlowModel<GetStartedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
