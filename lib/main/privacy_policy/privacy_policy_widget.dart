import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? 'assets/images/background_dark.png'
                    : 'assets/images/background_ligth.png',
              ).image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).accent1,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 44.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Privacy Policy',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Text(
                          'Effective Date: February 8, 2024\n\nThis Privacy Policy outlines how Kogniv (\"we,\" \"us,\" or \"our\") collects, uses, and protects the personal information of the users (\"you\" or \"your\") of the Kogniv application (\"App\"). Our commitment is to safeguard your privacy and ensure the confidentiality of your personal data.\n\nInformation Collection\nWe collect information in the following ways:\n\nInformation You Provide: This includes data entered while using our App, such as during account creation, incident reporting, HR inquiries, and feedback submission. Examples include your name, email address, employment details, and any other information you choose to provide.\n\nAutomated Information Collection: We automatically collect certain information when you use our App, including but not limited to, device identifiers, IP address, usage metrics, and geographical location data.\n\nServiceNow Integration Data: By integrating with ServiceNow, we access information necessary for the App\'s functionality, as authorized by you or your employer.\n\nUse of Information\nYour information is used to:\n\nProvide, maintain, and improve our App, including incident reporting, HR query resolution, and knowledge base access.\nPersonalize your user experience.\nCommunicate with you about the App, including updates, security alerts, and support messages.\nEnsure the security and integrity of our services.\nSharing of Information\nWe may share your information with:\n\nService Providers: Third-party vendors and service providers who require access to your information to support our App, including cloud storage providers and customer service platforms.\nCompliance and Harm Prevention: When required by law or to protect our rights, property, or safety, and that of our users or the public.\nBusiness Transfers: In connection with any merger, sale of company assets, financing, or acquisition of all or a portion of our business by another company.\nData Security\nWe implement appropriate technical and organizational measures to protect the personal information we collect and process. However, no electronic transmission or storage system is entirely secure, and we cannot guarantee absolute security.\n\nYour Rights\nDepending on your location, you may have certain rights regarding your personal information, including the right to access, correct, or delete the data we hold about you. To exercise these rights, please contact us at the provided contact details.\n\nChildren\'s Privacy\nOur App is not intended for individuals under the age of 16. We do not knowingly collect personal information from children under 16. If we learn that we have collected personal information from a child under 16, we will take steps to delete the information as soon as possible.\n\nChanges to This Privacy Policy\nWe may update this Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. We encourage you to review this Privacy Policy periodically for any changes.\n\nContact Us\nIf you have any questions about this Privacy Policy, please contact us at:\n\nEmail: labs@miksi.io\n\nThis Privacy Policy is effective as of February 8, 2024, and will remain in effect except with respect to any changes in its provisions in the future, which will be in effect immediately after being posted on this page.',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
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
    );
  }
}
