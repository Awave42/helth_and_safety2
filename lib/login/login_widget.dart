import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../sign/sign_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailssController;
  bool _loadingButton1 = false;
  TextEditingController passwordController1;
  bool passwordVisibility1;
  bool _loadingButton2 = false;
  bool _loadingButton3 = false;
  TextEditingController passwordController2;
  bool passwordVisibility2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailssController = TextEditingController();
    passwordController1 = TextEditingController();
    passwordVisibility1 = false;
    passwordController2 = TextEditingController();
    passwordVisibility2 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4B39EF),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFF4B39EF),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                      'assets/images/home_template2@3x.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 60),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/logoRobin@3x.png',
                                width: 240,
                                height: 60,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Sign In',
                                    style: FlutterFlowTheme.subtitle1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Container(
                                      width: 90,
                                      height: 3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      setState(() => _loadingButton1 = true);
                                      try {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignWidget(),
                                          ),
                                        );
                                      } finally {
                                        setState(() => _loadingButton1 = false);
                                      }
                                    },
                                    text: 'Sign Up',
                                    options: FFButtonOptions(
                                      width: 100,
                                      height: 50,
                                      color: Color(0x004B39EF),
                                      textStyle:
                                          FlutterFlowTheme.subtitle1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0x98FFFFFF),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: 12,
                                    ),
                                    loading: _loadingButton1,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 0),
                                    child: Container(
                                      width: 90,
                                      height: 3,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF4B39EF),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                          child: TextFormField(
                            controller: emailssController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'email 2',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0x98FFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              hintText: 'Enter your email...',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0x98FFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFF3124A1),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                          child: TextFormField(
                            controller: passwordController1,
                            obscureText: !passwordVisibility1,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0x98FFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              hintText: 'Enter your password...',
                              hintStyle: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0x98FFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              filled: true,
                              fillColor: Color(0xFF3124A1),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 24, 20, 24),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => passwordVisibility1 =
                                      !passwordVisibility1,
                                ),
                                child: Icon(
                                  passwordVisibility1
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0x98FFFFFF),
                                  size: 20,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              setState(() => _loadingButton2 = true);
                              try {
                                final user = await signInWithEmail(
                                  context,
                                  emailssController.text,
                                  passwordController1.text,
                                );
                                if (user == null) {
                                  return;
                                }

                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePageWidget(),
                                  ),
                                );
                              } finally {
                                setState(() => _loadingButton2 = false);
                              }
                            },
                            text: 'Login12',
                            options: FFButtonOptions(
                              width: 230,
                              height: 60,
                              color: Colors.white,
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF4B39EF),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 8,
                            ),
                            loading: _loadingButton2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button-ForgotPassword pressed ...');
                            },
                            text: 'Forgot Password?',
                            options: FFButtonOptions(
                              width: 170,
                              height: 40,
                              color: Color(0xFF4B39EF),
                              textStyle: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                              elevation: 0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 8,
                            ),
                            loading: _loadingButton3,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Text(
                                  'Or use a social account to login',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0x98FFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
            child: TextFormField(
              controller: passwordController2,
              obscureText: !passwordVisibility2,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0x98FFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                hintText: 'Enter your password...',
                hintStyle: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0x98FFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Color(0xFF3124A1),
                contentPadding: EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                suffixIcon: InkWell(
                  onTap: () => setState(
                    () => passwordVisibility2 = !passwordVisibility2,
                  ),
                  child: Icon(
                    passwordVisibility2
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Color(0x98FFFFFF),
                    size: 20,
                  ),
                ),
              ),
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
