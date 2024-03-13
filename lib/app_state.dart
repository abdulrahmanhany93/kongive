import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _refreshToken = prefs.getString('ff_refreshToken') ?? _refreshToken;
    });
    _safeInit(() {
      _isLogIn = prefs.getBool('ff_isLogIn') ?? _isLogIn;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _loginButtonTxt = 'Connect';
  String get loginButtonTxt => _loginButtonTxt;
  set loginButtonTxt(String value) {
    _loginButtonTxt = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
    prefs.setString('ff_refreshToken', value);
  }

  UserDataStruct _userData = UserDataStruct.fromSerializableMap(jsonDecode(
      '{\"fullName\":\"Jhon Doe\",\"email\":\"jhon@gmail.com\",\"companyName\":\"facebook\",\"companyUrl\":\"facebook.com\"}'));
  UserDataStruct get userData => _userData;
  set userData(UserDataStruct value) {
    _userData = value;
  }

  void updateUserDataStruct(Function(UserDataStruct) updateFn) {
    updateFn(_userData);
  }

  bool _isUserDataLoading = true;
  bool get isUserDataLoading => _isUserDataLoading;
  set isUserDataLoading(bool value) {
    _isUserDataLoading = value;
  }

  bool _isConversationLoading = false;
  bool get isConversationLoading => _isConversationLoading;
  set isConversationLoading(bool value) {
    _isConversationLoading = value;
  }

  List<ConversationsStruct> _conversations = [];
  List<ConversationsStruct> get conversations => _conversations;
  set conversations(List<ConversationsStruct> value) {
    _conversations = value;
  }

  void addToConversations(ConversationsStruct value) {
    _conversations.add(value);
  }

  void removeFromConversations(ConversationsStruct value) {
    _conversations.remove(value);
  }

  void removeAtIndexFromConversations(int index) {
    _conversations.removeAt(index);
  }

  void updateConversationsAtIndex(
    int index,
    ConversationsStruct Function(ConversationsStruct) updateFn,
  ) {
    _conversations[index] = updateFn(_conversations[index]);
  }

  void insertAtIndexInConversations(int index, ConversationsStruct value) {
    _conversations.insert(index, value);
  }

  bool _isChatLoading = true;
  bool get isChatLoading => _isChatLoading;
  set isChatLoading(bool value) {
    _isChatLoading = value;
  }

  List<MessagesStruct> _messages = [];
  List<MessagesStruct> get messages => _messages;
  set messages(List<MessagesStruct> value) {
    _messages = value;
  }

  void addToMessages(MessagesStruct value) {
    _messages.add(value);
  }

  void removeFromMessages(MessagesStruct value) {
    _messages.remove(value);
  }

  void removeAtIndexFromMessages(int index) {
    _messages.removeAt(index);
  }

  void updateMessagesAtIndex(
    int index,
    MessagesStruct Function(MessagesStruct) updateFn,
  ) {
    _messages[index] = updateFn(_messages[index]);
  }

  void insertAtIndexInMessages(int index, MessagesStruct value) {
    _messages.insert(index, value);
  }

  MessagesStruct _tempMessage = MessagesStruct();
  MessagesStruct get tempMessage => _tempMessage;
  set tempMessage(MessagesStruct value) {
    _tempMessage = value;
  }

  void updateTempMessageStruct(Function(MessagesStruct) updateFn) {
    updateFn(_tempMessage);
  }

  bool _isChatSendingLoading = false;
  bool get isChatSendingLoading => _isChatSendingLoading;
  set isChatSendingLoading(bool value) {
    _isChatSendingLoading = value;
  }

  String _emptyInput = '';
  String get emptyInput => _emptyInput;
  set emptyInput(String value) {
    _emptyInput = value;
  }

  CreateChatDataStruct _CreateChatData = CreateChatDataStruct();
  CreateChatDataStruct get CreateChatData => _CreateChatData;
  set CreateChatData(CreateChatDataStruct value) {
    _CreateChatData = value;
  }

  void updateCreateChatDataStruct(Function(CreateChatDataStruct) updateFn) {
    updateFn(_CreateChatData);
  }

  String _textFeildText = '';
  String get textFeildText => _textFeildText;
  set textFeildText(String value) {
    _textFeildText = value;
  }

  bool _isLogIn = false;
  bool get isLogIn => _isLogIn;
  set isLogIn(bool value) {
    _isLogIn = value;
    prefs.setBool('ff_isLogIn', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
