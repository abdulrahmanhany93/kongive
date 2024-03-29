import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_history_widget.dart' show ChatHistoryWidget;
import 'package:flutter/material.dart';

class ChatHistoryModel extends FlutterFlowModel<ChatHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - listConversation] action in chat_history widget.
  List<ConversationsStruct>? conversations;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
