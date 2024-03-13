// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sms_autofill/sms_autofill.dart';

class OtpHolder extends StatefulWidget {
  OtpHolder({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  String otp = '';

  @override
  _OtpHolderState createState() => _OtpHolderState();
}

class _OtpHolderState extends State<OtpHolder> {
  @override
  Widget build(BuildContext context) {
    return PinFieldAutoFill(
      codeLength: 4,
      autoFocus: true,
      decoration: BoxLooseDecoration(
        radius: const Radius.circular(10),
        gapSpace: 12,
        bgColorBuilder: PinListenColorBuilder(Colors.white, Colors.white),
        strokeColorBuilder: const FixedColorBuilder(
          Color.fromRGBO(200, 197, 197, 1),
        ),
      ),
      onCodeChanged: (code) async {
        widget.otp = code!;
      },
    );
  }
}
