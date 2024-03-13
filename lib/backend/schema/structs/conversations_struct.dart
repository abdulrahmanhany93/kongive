// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversationsStruct extends BaseStruct {
  ConversationsStruct({
    String? conversationId,
    double? createdAt,
    String? startingMessage,
    bool? isOld,
  })  : _conversationId = conversationId,
        _createdAt = createdAt,
        _startingMessage = startingMessage,
        _isOld = isOld;

  // "conversation_id" field.
  String? _conversationId;
  String get conversationId => _conversationId ?? '';
  set conversationId(String? val) => _conversationId = val;
  bool hasConversationId() => _conversationId != null;

  // "created_at" field.
  double? _createdAt;
  double get createdAt => _createdAt ?? 0.0;
  set createdAt(double? val) => _createdAt = val;
  void incrementCreatedAt(double amount) => _createdAt = createdAt + amount;
  bool hasCreatedAt() => _createdAt != null;

  // "starting_message" field.
  String? _startingMessage;
  String get startingMessage => _startingMessage ?? '';
  set startingMessage(String? val) => _startingMessage = val;
  bool hasStartingMessage() => _startingMessage != null;

  // "isOld" field.
  bool? _isOld;
  bool get isOld => _isOld ?? false;
  set isOld(bool? val) => _isOld = val;
  bool hasIsOld() => _isOld != null;

  static ConversationsStruct fromMap(Map<String, dynamic> data) =>
      ConversationsStruct(
        conversationId: data['conversation_id'] as String?,
        createdAt: castToType<double>(data['created_at']),
        startingMessage: data['starting_message'] as String?,
        isOld: data['isOld'] as bool?,
      );

  static ConversationsStruct? maybeFromMap(dynamic data) => data is Map
      ? ConversationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'conversation_id': _conversationId,
        'created_at': _createdAt,
        'starting_message': _startingMessage,
        'isOld': _isOld,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'conversation_id': serializeParam(
          _conversationId,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.double,
        ),
        'starting_message': serializeParam(
          _startingMessage,
          ParamType.String,
        ),
        'isOld': serializeParam(
          _isOld,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ConversationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversationsStruct(
        conversationId: deserializeParam(
          data['conversation_id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.double,
          false,
        ),
        startingMessage: deserializeParam(
          data['starting_message'],
          ParamType.String,
          false,
        ),
        isOld: deserializeParam(
          data['isOld'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ConversationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversationsStruct &&
        conversationId == other.conversationId &&
        createdAt == other.createdAt &&
        startingMessage == other.startingMessage &&
        isOld == other.isOld;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([conversationId, createdAt, startingMessage, isOld]);
}

ConversationsStruct createConversationsStruct({
  String? conversationId,
  double? createdAt,
  String? startingMessage,
  bool? isOld,
}) =>
    ConversationsStruct(
      conversationId: conversationId,
      createdAt: createdAt,
      startingMessage: startingMessage,
      isOld: isOld,
    );
