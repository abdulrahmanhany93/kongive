import '/backend/schema/structs/index.dart';
import '/components/empty_chat_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'chat_new_model.dart';
export 'chat_new_model.dart';

class ChatNewWidget extends StatefulWidget {
  const ChatNewWidget({
    super.key,
    required this.conversationId,
    this.text,
  });

  final String? conversationId;
  final String? text;

  @override
  State<ChatNewWidget> createState() => _ChatNewWidgetState();
}

class _ChatNewWidgetState extends State<ChatNewWidget> {
  late ChatNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 100));
      await _model.listViewController2?.animateTo(
        _model.listViewController2!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 1),
        curve: Curves.ease,
      );
      if (widget.text != null && widget.text != '') {
        _model.newChat = await actions.chatbot(
          FFAppState().token,
          widget.text,
        );
        _model.message = await actions.messages(
          FFAppState().token,
          _model.newChat?.conversationId,
        );
        setState(() {
          FFAppState().messages =
              _model.message!.toList().cast<MessagesStruct>();
        });
      }
      await Future.delayed(const Duration(milliseconds: 100));
      await _model.listViewController2?.animateTo(
        _model.listViewController2!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 10),
        curve: Curves.ease,
      );
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                    fit: BoxFit.contain,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/background_dark.png'
                          : 'assets/images/Untitled_(1).jpeg',
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
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  controller: _model.listViewController1,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 16.0, 20.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Dashboard',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: 41.0,
                              height: 41.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context)
                                        .gradientColor1b,
                                    FlutterFlowTheme.of(context).gradientColor2b
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, 1.0),
                                  end: const AlignmentDirectional(0, -1.0),
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_back_sharp,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().messages = [];
                              });

                              context.pushNamed(
                                'chat_new',
                                queryParameters: {
                                  'conversationId': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                  'text': serializeParam(
                                    '',
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Text(
                              'New Chat',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontSize: 21.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'edit_profile',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: 38.0,
                              height: 38.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primaryText,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: const Color(0x4FCCCDCF),
                                  width: 1.0,
                                ),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('edit_profile');
                                },
                                child: Container(
                                  width: 120.0,
                                  height: 120.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://s3-alpha-sig.figma.com/img/07fb/a6d9/be1999310f0cb3465b0d9dd6c38346c6?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PEmSgmdxMg9K5ZQv-RzVKCN-GA9f36LAVK2nU44u4QTd~zn5CwhWutMRYBwNDg-FzCEecaZRB6Lcgh3XbrlZBoLZEQgg00VuwIf6ERiVHni-cGbImCxMjQ3qPJsfCs-sNYdKlmxEjGX1Tx-evhx5Nrkg62vws4A63~sw5YVTv03aqSrT0PvNP5O~alFXODENUZY7hyJeynGdOZY~mpo1e6bEZDqoP7Z~-AbjceBBGTuQC0MvED2GTJwnRfB6U9ldbfpmDf7erY0gEAGmyB6y1-4rcz62gOPyka3K25fC6MkxO4~F92YW-pJuF4u1qfkRbUcKwPxrm~Qazn0pZkdMzQ__',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Opacity(
                      opacity: 0.0,
                      child: Divider(
                        thickness: 1.0,
                        color: Color(0xFFCACFDB),
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.75,
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final messages = FFAppState().messages.toList();
                          if (messages.isEmpty) {
                            return const EmptyChatWidget();
                          }
                          return ListView.separated(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              28.0,
                              0,
                              10.0,
                            ),
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: messages.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 18.0),
                            itemBuilder: (context, messagesIndex) {
                              final messagesItem = messages[messagesIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.88,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (messagesItem.type == 'human')
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.88,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3U,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 13.0, 16.0, 13.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 25.0,
                                                        height: 25.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          'https://s3-alpha-sig.figma.com/img/07fb/a6d9/be1999310f0cb3465b0d9dd6c38346c6?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PEmSgmdxMg9K5ZQv-RzVKCN-GA9f36LAVK2nU44u4QTd~zn5CwhWutMRYBwNDg-FzCEecaZRB6Lcgh3XbrlZBoLZEQgg00VuwIf6ERiVHni-cGbImCxMjQ3qPJsfCs-sNYdKlmxEjGX1Tx-evhx5Nrkg62vws4A63~sw5YVTv03aqSrT0PvNP5O~alFXODENUZY7hyJeynGdOZY~mpo1e6bEZDqoP7Z~-AbjceBBGTuQC0MvED2GTJwnRfB6U9ldbfpmDf7erY0gEAGmyB6y1-4rcz62gOPyka3K25fC6MkxO4~F92YW-pJuF4u1qfkRbUcKwPxrm~Qazn0pZkdMzQ__',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Text(
                                                        'You',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 10.0)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 9.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      messagesItem.content,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 13.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        if (messagesItem.type == 'ai')
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.88,
                                              decoration: BoxDecoration(
                                                gradient: const LinearGradient(
                                                  colors: [
                                                    Color(0x5034A853),
                                                    Color(0x50476FFF)
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.0, 1.0),
                                                  end: AlignmentDirectional(
                                                      0, -1.0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 13.0, 16.0, 13.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 34.0,
                                                          height: 34.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                const LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x6934A853),
                                                                Color(
                                                                    0xB69EFF00)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0, 1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, -1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        11.0),
                                                            border: Border.all(
                                                              color: const Color(
                                                                  0x7934A853),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Container(
                                                              width: 24.0,
                                                              height: 24.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/friendly_robot_assistant_waving.png',
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.asset(
                                                            Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? 'assets/images/Icons.png'
                                                                : 'assets/images/Icons_(1).png',
                                                            width: 28.0,
                                                            height: 28.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          width: 10.0)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  9.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        messagesItem.content,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (messagesItem.type == 'ai')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 18.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: SvgPicture.asset(
                                                    Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? 'assets/images/Vector_(2).svg'
                                                        : 'assets/images/Vector_(1).svg',
                                                    width: 17.0,
                                                    height: 18.0,
                                                    fit: BoxFit.none,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: SvgPicture.asset(
                                                      Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? 'assets/images/Vector_(3).svg'
                                                          : 'assets/images/Vector_(4).svg',
                                                      width: 17.0,
                                                      height: 18.0,
                                                      fit: BoxFit.none,
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await Clipboard.setData(
                                                        ClipboardData(
                                                            text: messagesItem
                                                                .content));
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Copied to clipboard',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                          ),
                                                        ),
                                                        duration: const Duration(
                                                            milliseconds: 4000),
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor2,
                                                      ),
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            Theme.of(context)
                                                                        .brightness ==
                                                                    Brightness
                                                                        .dark
                                                                ? 'assets/images/Group_3_(4).svg'
                                                                : 'assets/images/Group_3_(5).svg',
                                                            width: 17.0,
                                                            height: 17.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Copy',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent3,
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(width: 12.0)),
                              );
                            },
                            controller: _model.listViewController2,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          21.0, 10.0, 21.0, 30.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.72,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onFieldSubmitted: (_) async {
                                var shouldSetState = false;
                                if (_model.textController.text != '') {
                                  setState(() {
                                    FFAppState().addToMessages(MessagesStruct(
                                      content: _model.textController.text,
                                      type: 'human',
                                      example: false,
                                    ));
                                    FFAppState().isChatSendingLoading = true;
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 100));
                                  await _model.listViewController2?.animateTo(
                                    _model.listViewController2!.position
                                        .maxScrollExtent,
                                    duration: const Duration(milliseconds: 1),
                                    curve: Curves.ease,
                                  );
                                  setState(() {
                                    FFAppState().textFeildText =
                                        _model.textController.text;
                                  });
                                  setState(() {
                                    _model.textController?.clear();
                                  });
                                  _model.aiResponseTwo =
                                      await actions.continueChat(
                                    FFAppState().token,
                                    FFAppState().textFeildText,
                                    widget.conversationId,
                                  );
                                  shouldSetState = true;
                                  setState(() {
                                    FFAppState()
                                        .addToMessages(_model.aiResponseTwo!);
                                    FFAppState().isChatSendingLoading = false;
                                  });
                                  setState(() {
                                    _model.textController?.clear();
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 100));
                                  await _model.listViewController2?.animateTo(
                                    _model.listViewController2!.position
                                        .maxScrollExtent,
                                    duration: const Duration(milliseconds: 1),
                                    curve: Curves.ease,
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'message is empty',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                  if (shouldSetState) setState(() {});
                                  return;
                                }

                                if (shouldSetState) setState(() {});
                              },
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Send a message...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: const Color(0xFFABAFB7),
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF476FFF),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 14.0, 14.0, 14.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    fontWeight: FontWeight.w600,
                                  ),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {},
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/Frame_(1).png',
                                          width: 17.0,
                                          height: 17.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (FFAppState().isChatSendingLoading)
                                Text(
                                  'Typing..',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .accent3,
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var shouldSetState = false;
                                  if (_model.textController.text != '') {
                                    setState(() {
                                      FFAppState().addToMessages(MessagesStruct(
                                        content: _model.textController.text,
                                        type: 'human',
                                        example: false,
                                      ));
                                      FFAppState().isChatSendingLoading = true;
                                    });
                                    await Future.delayed(
                                        const Duration(milliseconds: 100));
                                    await _model.listViewController2?.animateTo(
                                      _model.listViewController2!.position
                                          .maxScrollExtent,
                                      duration: const Duration(milliseconds: 1),
                                      curve: Curves.ease,
                                    );
                                    setState(() {
                                      FFAppState().textFeildText =
                                          _model.textController.text;
                                    });
                                    setState(() {
                                      _model.textController?.clear();
                                    });
                                    _model.aiResponse =
                                        await actions.continueChat(
                                      FFAppState().token,
                                      FFAppState().textFeildText,
                                      widget.conversationId,
                                    );
                                    shouldSetState = true;
                                    setState(() {
                                      FFAppState()
                                          .addToMessages(_model.aiResponse!);
                                      FFAppState().isChatSendingLoading = false;
                                    });
                                    await Future.delayed(
                                        const Duration(milliseconds: 100));
                                    await _model.listViewController2?.animateTo(
                                      _model.listViewController2!.position
                                          .maxScrollExtent,
                                      duration: const Duration(milliseconds: 1),
                                      curve: Curves.ease,
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'message is empty',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                    if (shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (shouldSetState) setState(() {});
                                },
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF476FFF),
                                        Color(0xFF31B0E6)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(0.0, 1.0),
                                      end: AlignmentDirectional(0, -1.0),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Frame_(1).png',
                                          width: 17.0,
                                          height: 17.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
