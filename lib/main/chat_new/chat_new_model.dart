import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_new_widget.dart' show ChatNewWidget;
import 'package:flutter/material.dart';

class ChatNewModel extends FlutterFlowModel<ChatNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - chatbot] action in chat_new widget.
  CreateChatDataStruct? newChat;
  // Stores action output result for [Custom Action - messages] action in chat_new widget.
  List<MessagesStruct>? message;
  // State field(s) for ListView widget.
  ScrollController? listViewController1;
  // State field(s) for ListView widget.
  ScrollController? listViewController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - continueChat] action in TextField widget.
  MessagesStruct? aiResponseTwo;
  // Stores action output result for [Custom Action - continueChat] action in Container widget.
  MessagesStruct? aiResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController1 = ScrollController();
    listViewController2 = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController1?.dispose();
    listViewController2?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
