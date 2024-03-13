// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateChatDataStruct extends BaseStruct {
  CreateChatDataStruct({
    String? conversationId,
    String? result,
  })  : _conversationId = conversationId,
        _result = result;

  // "conversation_id" field.
  String? _conversationId;
  String get conversationId => _conversationId ?? '';
  set conversationId(String? val) => _conversationId = val;
  bool hasConversationId() => _conversationId != null;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  set result(String? val) => _result = val;
  bool hasResult() => _result != null;

  static CreateChatDataStruct fromMap(Map<String, dynamic> data) =>
      CreateChatDataStruct(
        conversationId: data['conversation_id'] as String?,
        result: data['result'] as String?,
      );

  static CreateChatDataStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateChatDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'conversation_id': _conversationId,
        'result': _result,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'conversation_id': serializeParam(
          _conversationId,
          ParamType.String,
        ),
        'result': serializeParam(
          _result,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreateChatDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreateChatDataStruct(
        conversationId: deserializeParam(
          data['conversation_id'],
          ParamType.String,
          false,
        ),
        result: deserializeParam(
          data['result'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreateChatDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateChatDataStruct &&
        conversationId == other.conversationId &&
        result == other.result;
  }

  @override
  int get hashCode => const ListEquality().hash([conversationId, result]);
}

CreateChatDataStruct createCreateChatDataStruct({
  String? conversationId,
  String? result,
}) =>
    CreateChatDataStruct(
      conversationId: conversationId,
      result: result,
    );
