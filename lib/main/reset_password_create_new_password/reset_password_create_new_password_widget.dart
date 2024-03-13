import '/components/button_widget.dart';
import '/components/password_text_feild_widget.dart';
import '/components/reset_password_bottom_sheet_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'reset_password_create_new_password_model.dart';
export 'reset_password_create_new_password_model.dart';

class ResetPasswordCreateNewPasswordWidget extends StatefulWidget {
  const ResetPasswordCreateNewPasswordWidget({super.key});

  @override
  State<ResetPasswordCreateNewPasswordWidget> createState() =>
      _ResetPasswordCreateNewPasswordWidgetState();
}

class _ResetPasswordCreateNewPasswordWidgetState
    extends State<ResetPasswordCreateNewPasswordWidget> {
  late ResetPasswordCreateNewPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResetPasswordCreateNewPasswordModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/register_login_forget_black_background.png'
                          : 'assets/images/register_login_forget.png',
                    ).image,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 0.0, 0.0),
                  child: Container(
                    width: 38.0,
                    height: 38.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: const Color(0xFF6486FF),
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Icon(
                        Icons.chevron_left,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'Create New Password',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Montserrat',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                  child: Text(
                    'Create your new password. If you forget it, no worry, you can reset again with forgot password.',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                          lineHeight: 1.5,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 500.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    alignment: const AlignmentDirectional(-1.0, 1.0),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100.0,
                            height: 28.0,
                            decoration: const BoxDecoration(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 16.0, 17.0, 0.0),
                            child: wrapWithModel(
                              model: _model.passwordTextFeildModel1,
                              updateCallback: () => setState(() {}),
                              child: const PasswordTextFeildWidget(
                                feildName: 'New Password',
                                hintName: 'Enter your new password',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 16.0, 17.0, 0.0),
                            child: wrapWithModel(
                              model: _model.passwordTextFeildModel2,
                              updateCallback: () => setState(() {}),
                              child: const PasswordTextFeildWidget(
                                feildName: 'Confirm new Password',
                                hintName: 'Enter your password',
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                17.0, 20.0, 17.0, 40.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: const Color(0x00FFFFFF),
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: const ResetPasswordBottomSheetWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: wrapWithModel(
                                model: _model.buttonModel,
                                updateCallback: () => setState(() {}),
                                child: ButtonWidget(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  buttonName: 'Reset My Password',
                                  buttonNameColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  buttonAction: () async {},
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
