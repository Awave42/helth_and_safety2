import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../spisok_copy/spisok_copy_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OperatorWidget extends StatefulWidget {
  OperatorWidget({Key key}) : super(key: key);

  @override
  _OperatorWidgetState createState() => _OperatorWidgetState();
}

class _OperatorWidgetState extends State<OperatorWidget>
    with TickerProviderStateMixin {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      delay: 1000,
      fadeIn: true,
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 100,
      fadeIn: true,
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      fadeIn: true,
      scale: 0.4,
    ),
  };

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
      backgroundColor: Color(0xFFE0E0E0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
              child: Image.asset(
                'assets/images/ohrana-truda-big.png',
                width: 140,
                height: 140,
                fit: BoxFit.fitHeight,
              ).animated([animationsMap['imageOnPageLoadAnimation']]),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 60),
              child: Text(
                '???????????????? ??????????????????',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.primaryColor,
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                setState(() => _loadingButton1 = true);
                try {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpisokCopyWidget(),
                    ),
                  );
                } finally {
                  setState(() => _loadingButton1 = false);
                }
              },
              text: '??????-????????-????9-02-2021',
              options: FFButtonOptions(
                width: 255,
                height: 100,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 3,
              ),
              loading: _loadingButton1,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '?????????????? ????',
                options: FFButtonOptions(
                  width: 255,
                  height: 100,
                  color: FlutterFlowTheme.primaryColor,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 3,
                ),
                loading: _loadingButton2,
              ),
            )
          ],
        ).animated([animationsMap['columnOnPageLoadAnimation']]),
      ).animated([animationsMap['containerOnPageLoadAnimation']]),
    );
  }
}
