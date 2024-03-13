import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'normal_text_feild_model.dart';
export 'normal_text_feild_model.dart';

class NormalTextFeildWidget extends StatefulWidget {
  const NormalTextFeildWidget({
    super.key,
    required this.feildName,
    required this.hintName,
  });

  final String? feildName;
  final String? hintName;

  @override
  State<NormalTextFeildWidget> createState() => _NormalTextFeildWidgetState();
}

class _NormalTextFeildWidgetState extends State<NormalTextFeildWidget> {
  late NormalTextFeildModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NormalTextFeildModel());

    _model.textController ??= TextEditingController();
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
    context.watch<FFAppState>();

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
              onChanged: (_) => EasyDebounce.debounce(
                '_model.textController',
                const Duration(milliseconds: 2000),
                () async {
                  FFAppState().email = FFAppState().textFeildText;
                },
              ),
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: widget.hintName,
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).accent4,
                      fontWeight: FontWeight.normal,
                    ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(13.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryText,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(13.0),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(13.0),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(13.0),
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
