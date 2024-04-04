import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'coaches_curriculum_model.dart';
export 'coaches_curriculum_model.dart';

class CoachesCurriculumWidget extends StatefulWidget {
  const CoachesCurriculumWidget({super.key});

  @override
  State<CoachesCurriculumWidget> createState() =>
      _CoachesCurriculumWidgetState();
}

class _CoachesCurriculumWidgetState extends State<CoachesCurriculumWidget> {
  late CoachesCurriculumModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoachesCurriculumModel());

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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color(0xFFF9B52F),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 0.0,
            borderWidth: 1.0,
            buttonSize: 0.0,
            icon: const Icon(
              Icons.arrow_circle_left_rounded,
              color: Colors.black,
              size: 40.0,
            ),
            onPressed: () async {
              context.pushNamed('Coaches');
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/referee-vision-shbzkf/assets/yw9n47unaq3o/RV_2.0.png',
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'CURRICULUM',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: Colors.black,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.black,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 35.0,
                  fillColor: Colors.black,
                  icon: const Icon(
                    Icons.house,
                    color: Color(0xFFF9B52F),
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('HomePage');
                  },
                ),
              ),
            ].divide(const SizedBox(width: 1.0)),
          ),
          actions: const [],
          centerTitle: false,
          toolbarHeight: 80.0,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 744.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(0.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/referee-vision-shbzkf/assets/ldxabyen5hgg/bg6.jpg',
                            width: 399.0,
                            height: 1217.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await launchURL(
                                'https://drive.google.com/file/d/1Ya0KlQjofNHSVJs9gYWC61k-WsyhfjL8/view');
                          },
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.81),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/10-0SU_GnBsmcvRGMi83u7x2azmUrHq9J/view');
                                      },
                                      text: 'WABC COACHES MANUAL - BASKETBALL',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(8.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1xdcLnq_pA0eNXSBeM8HNFKV3K07_H-9n/view');
                                      },
                                      text:
                                          'WABC COACHES MANUAL - MINI BASKETBALL',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(10.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.54),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1-faYD3_X_vaG3KiaLL_bSJjXlkMFqh1h/view');
                                      },
                                      text: 'WABC COACHES MANUAL - LEVEL 1',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding: const EdgeInsets.all(0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.73),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1fqQbBt7MLXg9NGCf356HV6kC83fAhFVH/view');
                                      },
                                      text: 'WABC COACHES MANUAL - LEVEL 2',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding: const EdgeInsets.all(0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.92),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://fiba3x3.com/docs/fiba-internal-regulations-book-6.pdf');
                                      },
                                      text: 'WABC COACHES MANUAL - LEVEL 3',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding: const EdgeInsets.all(0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.15),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1sJNEMHO4SNUov0XLKA43Jh5on_DpRCHM/view');
                                      },
                                      text: 'WABC FACILITATOR HANDBOOK',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding: const EdgeInsets.all(0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.04),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1BdUb_fMfTtyggxtK4Ft_Ia-BhPJEPVEm/view');
                                      },
                                      text: 'WABC COACH WORKBOOK',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding: const EdgeInsets.all(0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.35),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1QlEJfMQSxkqUaRjEWkFBmWNQdCu3AAQo/view');
                                      },
                                      text: 'WABC ACTIVITIES BOOK',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(0.0),
                                        iconPadding: const EdgeInsets.all(0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.42),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://drive.google.com/file/d/1jkrcTRQ0BAl-KV2Ruc-SNWzBm4WnHiP1/view');
                                      },
                                      text: 'WABC PRACTICE PLANS',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(10.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, -0.23),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await launchURL(
                                            'https://fiba3x3.com/docs/wabc-3x3-players-guide.pdf');
                                      },
                                      text: 'WABC 3X3 - PLAYERS GUIDE',
                                      options: FFButtonOptions(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                        height: 40.0,
                                        padding: const EdgeInsets.all(10.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFFFE300),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
