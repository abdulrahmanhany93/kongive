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

Future<MessagesStruct> continueChat(
  String? token,
  String? input,
  String? conversationId,
) async {
  // Add your function code here!
  var data = {'conversation_id': conversationId, 'input': input};
  print("message data is: $data");

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
    final Response response = await dio.post(
      "/chat/",
      data: data,
    );

    return MessagesStruct(
        content: response.data['result'] ?? '', type: 'ai', example: false);
  } catch (e) {
    print('Error Occured: $e');
    throw e;
    // Handle the error appropriately
  }
}
