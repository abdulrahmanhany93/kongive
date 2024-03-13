import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _sendFamily = 'Send';
  static const String _bookmarkFamily = 'Bookmark';
  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _eduationFamily = 'Eduation';
  static const String _searchqFamily = 'Searchq';

  // Send
  static const IconData kframe = IconData(0xe801, fontFamily: _sendFamily);

  // Bookmark
  static const IconData kbookmarkBorder =
      IconData(0xe802, fontFamily: _bookmarkFamily);

  // MyFlutterApp
  static const IconData kicLanguage =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);

  // Eduation
  static const IconData kicAcademic =
      IconData(0xe801, fontFamily: _eduationFamily);

  // Searchq
  static const IconData kmagnifyingglass =
      IconData(0xe802, fontFamily: _searchqFamily);
}
