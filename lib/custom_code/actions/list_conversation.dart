// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'dart:async';
import 'dart:convert';

Future<List<ConversationsStruct>> listConversation(String? token) async {
  // Add your function code here!
  /// MODIFY CODE ONLY BELOW THIS LINE

  Dio dio = Dio(BaseOptions(baseUrl: "https://kogniv.com"));

  try {
    // add interceptor to dio
    dio.interceptors.add(
      InterceptorsWrapper(onRequest: (options, handler) async {
        // get user token
        options.headers['authorization'] = "Bearer $token";

        return handler.next(options);
      }, onResponse: (response, handler) {
        if (response.statusCode! >= 200 || response.statusCode! < 300) {
          return handler.next(response);
        } else {
          return handler.next(response);
        }
      }, onError: (DioError e, handler) {
        return handler.next(e);
      }),
    );
    final Response response = await dio.get(
      "/messages/conversations",
    );

    if (response.data['conversations'] is List) {
      // Use the `fromJson` method directly in the mapping
      List<ConversationsStruct> res =
          (response.data['conversations'] as List).map((conversationData) {
        DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
            (conversationData['created_at'] * 1000).round());
        String formattedDate =
            DateFormat('yyyy-MM-dd hh:mm:ss').format(dateTime);
        DateTime tempDate =
            new DateFormat("yyyy-MM-dd hh:mm:ss").parse(formattedDate);

        DateTime from = DateTime(tempDate.year, tempDate.month, tempDate.day);
        DateTime to = DateTime.now();
        DateTime(to.year, to.month, to.day);

        int date_difference = (to.difference(from).inHours / 24).round();
        if (date_difference > 1) {
          return ConversationsStruct(
            conversationId: conversationData['conversation_id'] ?? '',
            createdAt: conversationData['created_at'] ?? 0.0,
            startingMessage: conversationData['starting_message'] ?? '',
            isOld: true,
          );
        } else {
          return ConversationsStruct(
            conversationId: conversationData['conversation_id'] ?? '',
            createdAt: conversationData['created_at'] ?? 0.0,
            startingMessage: conversationData['starting_message'] ?? '',
            isOld: false,
          );
        }
      }).toList();

      return res;
    } else {
      print("Unexpected data format in response");
      return [];
    }
  } catch (e) {
    print('Error Occured: $e');
    return [];
    // Handle the error appropriately
  }
}
