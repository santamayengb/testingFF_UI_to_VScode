import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../phone_auth_page/phone_auth_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({Key key}) : super(key: key);

  @override
  _WelcomePageWidgetState createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 14.999999999999986),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/images/onboarding.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0x73000000),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PhoneAuthPageWidget(),
                                          ),
                                          (r) => false,
                                        );
                                      },
                                      text: 'GET STARTED',
                                      options: FFButtonOptions(
                                        width: 130,
                                        height: 40,
                                        color: FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.subtitle2.override(
                                          fontFamily: 'Spartan',
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: 5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 5),
                                    child: Text(
                                      'By continuing, you agree to our ',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Spartan',
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Terms of Service',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xBC000000),
                                          fontSize: 10,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 8, 0),
                                        child: Container(
                                          width: 1,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF5B5B5B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ' Privacy Policy',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xBC000000),
                                          fontSize: 10,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 8, 0),
                                        child: Container(
                                          width: 1,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF5B5B5B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Code of Conduct ',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xBC000000),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 260),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/LOGO.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 2, 0),
                              child: Text(
                                'foodwifi',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'Restaurant Partner',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Spartan',
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ).animated(
                            [animationsMap['columnOnPageLoadAnimation']]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
