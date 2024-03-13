import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool? isConversationOld(double? date) {
  DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch((date! * 1000).round());
  String formattedDate = DateFormat('yyyy-MM-dd hh:mm:ss').format(dateTime);
  DateTime tempDate =
      new DateFormat("yyyy-MM-dd hh:mm:ss").parse(formattedDate);

  DateTime from = DateTime(tempDate.year, tempDate.month, tempDate.day);
  DateTime to = DateTime.now();
  DateTime(to.year, to.month, to.day);

  int x = (to.difference(from).inHours / 24).round();
  if (x > 1) {
    return true;
  } else {
    return false;
  }
}
