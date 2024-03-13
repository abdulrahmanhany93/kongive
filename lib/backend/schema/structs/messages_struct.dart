// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesStruct extends BaseStruct {
  MessagesStruct({
    String? content,
    String? type,
    bool? example,
  })  : _content = content,
        _type = type,
        _example = example;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "example" field.
  bool? _example;
  bool get example => _example ?? false;
  set example(bool? val) => _example = val;
  bool hasExample() => _example != null;

  static MessagesStruct fromMap(Map<String, dynamic> data) => MessagesStruct(
        content: data['content'] as String?,
        type: data['type'] as String?,
        example: data['example'] as bool?,
      );

  static MessagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
        'type': _type,
        'example': _example,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'example': serializeParam(
          _example,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MessagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessagesStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        example: deserializeParam(
          data['example'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MessagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessagesStruct &&
        content == other.content &&
        type == other.type &&
        example == other.example;
  }

  @override
  int get hashCode => const ListEquality().hash([content, type, example]);
}

MessagesStruct createMessagesStruct({
  String? content,
  String? type,
  bool? example,
}) =>
    MessagesStruct(
      content: content,
      type: type,
      example: example,
    );
