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

class BlackOTPHolder extends StatefulWidget {
  BlackOTPHolder({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;
  String otp = '';

  @override
  _BlackOTPHolderState createState() => _BlackOTPHolderState();
}

class _BlackOTPHolderState extends State<BlackOTPHolder> {
  @override
  Widget build(BuildContext context) {
    return PinFieldAutoFill(
      codeLength: 4,
      autoFocus: true,
      decoration: BoxLooseDecoration(
        radius: const Radius.circular(10),
        gapSpace: 12,
        bgColorBuilder: PinListenColorBuilder(
          Colors.white,
          Color.fromRGBO(49, 55, 65, 1),
        ),
        strokeColorBuilder: const FixedColorBuilder(
          Color.fromRGBO(49, 55, 65, 1),
        ),
      ),
      onCodeChanged: (code) async {
        widget.otp = code!;
      },
    );
  }
}
