import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    this.backgroundColor,
    required this.buttonName,
    this.buttonNameColor,
    required this.buttonAction,
  });

  final Color? backgroundColor;
  final String? buttonName;
  final Color? buttonNameColor;
  final Future Function()? buttonAction;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.buttonAction?.call();
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 48.0,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF476FFF), Color(0xFF31B0E6)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(1.0, 0.0),
            end: AlignmentDirectional(-1.0, 0),
          ),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 14.0),
            child: Text(
              widget.buttonName!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
