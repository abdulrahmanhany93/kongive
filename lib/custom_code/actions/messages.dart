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

Future<List<MessagesStruct>> messages(
  String? token,
  String? conversationId,
) async {
  // Add your function code here!

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
      "/messages/$conversationId",
    );

    if (response.data['messages'] is List) {
      // Use the `fromJson` method directly in the mapping
      List<MessagesStruct> res =
          (response.data['messages'] as List).map((messageData) {
        print("response inside map: $messageData[1]");

        return MessagesStruct(
          content: messageData[1]['content'] ?? '',
          type: messageData[1]['type'] ?? '',
          example: messageData[1]['example'] ?? false,
        );
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
