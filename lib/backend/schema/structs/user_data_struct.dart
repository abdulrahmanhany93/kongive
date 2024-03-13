// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    String? email,
    String? companyName,
    String? companyUrl,
    String? name,
  })  : _email = email,
        _companyName = companyName,
        _companyUrl = companyUrl,
        _name = name;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  set companyName(String? val) => _companyName = val;
  bool hasCompanyName() => _companyName != null;

  // "companyUrl" field.
  String? _companyUrl;
  String get companyUrl => _companyUrl ?? '';
  set companyUrl(String? val) => _companyUrl = val;
  bool hasCompanyUrl() => _companyUrl != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        email: data['email'] as String?,
        companyName: data['companyName'] as String?,
        companyUrl: data['companyUrl'] as String?,
        name: data['name'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'companyName': _companyName,
        'companyUrl': _companyUrl,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'companyName': serializeParam(
          _companyName,
          ParamType.String,
        ),
        'companyUrl': serializeParam(
          _companyUrl,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        companyName: deserializeParam(
          data['companyName'],
          ParamType.String,
          false,
        ),
        companyUrl: deserializeParam(
          data['companyUrl'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        email == other.email &&
        companyName == other.companyName &&
        companyUrl == other.companyUrl &&
        name == other.name;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([email, companyName, companyUrl, name]);
}

UserDataStruct createUserDataStruct({
  String? email,
  String? companyName,
  String? companyUrl,
  String? name,
}) =>
    UserDataStruct(
      email: email,
      companyName: companyName,
      companyUrl: companyUrl,
      name: name,
    );
