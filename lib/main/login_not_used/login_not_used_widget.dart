import '/components/button_widget.dart';
import '/components/nav_bar_widget.dart';
import '/components/normal_text_feild_widget.dart';
import '/components/password_text_feild_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_not_used_model.dart';
export 'login_not_used_model.dart';

class LoginNotUsedWidget extends StatefulWidget {
  const LoginNotUsedWidget({super.key});

  @override
  State<LoginNotUsedWidget> createState() => _LoginNotUsedWidgetState();
}

class _LoginNotUsedWidgetState extends State<LoginNotUsedWidget> {
  late LoginNotUsedModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginNotUsedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                          ? 'assets/images/home_and_others_black_background.png'
                          : 'assets/images/home_others.png',
                    ).image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
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
                            17.0, 0.0, 17.0, 7.0),
                        child: Text(
                          'SD Solution',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            17.0, 0.0, 17.0, 50.0),
                        child: Text(
                          'URL: http/23212312312',
                          style: FlutterFlowTheme.of(context).labelLarge,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            17.0, 0.0, 17.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your Servicenow account',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: const Color(0xFF676C77),
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.normalTextFeildModel,
                                  updateCallback: () => setState(() {}),
                                  child: const NormalTextFeildWidget(
                                    feildName: 'Email Address',
                                    hintName: 'Enter your email address',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.passwordTextFeildModel,
                                  updateCallback: () => setState(() {}),
                                  child: const PasswordTextFeildWidget(
                                    feildName: 'Password',
                                    hintName: 'Enter your password',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 0.0, 40.0, 0.0),
                              child: wrapWithModel(
                                model: _model.buttonModel,
                                updateCallback: () => setState(() {}),
                                child: ButtonWidget(
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  buttonName: FFAppState().loginButtonTxt,
                                  buttonNameColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  buttonAction: () async {},
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.navBarModel,
                              updateCallback: () => setState(() {}),
                              child: NavBarWidget(
                                home: () async {},
                                chat: () async {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
