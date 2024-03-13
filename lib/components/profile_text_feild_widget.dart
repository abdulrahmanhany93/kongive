import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_text_feild_model.dart';
export 'profile_text_feild_model.dart';

class ProfileTextFeildWidget extends StatefulWidget {
  const ProfileTextFeildWidget({
    super.key,
    required this.feildName,
    required this.initialValue,
  });

  final String? feildName;
  final String? initialValue;

  @override
  State<ProfileTextFeildWidget> createState() => _ProfileTextFeildWidgetState();
}

class _ProfileTextFeildWidgetState extends State<ProfileTextFeildWidget> {
  late ProfileTextFeildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileTextFeildModel());

    _model.textController ??= TextEditingController(text: widget.initialValue);
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.feildName!,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: TextFormField(
              controller: _model.textController,
              focusNode: _model.textFieldFocusNode,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter your email address',
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Montserrat',
                      color: const Color(0xFFABAFB7),
                      fontWeight: FontWeight.normal,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                filled: true,
                fillColor: const Color(0x5DC0C0C0),
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 14.0, 14.0, 14.0),
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).tertiary,
                    fontWeight: FontWeight.w600,
                  ),
              maxLines: null,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ],
      ),
    );
  }
}
