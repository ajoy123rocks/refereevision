import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        TiltEffect(
          curve: Curves.linear,
          delay: 1000.ms,
          duration: 10000.ms,
          begin: const Offset(0, 0),
          end: const Offset(0, 6.283),
        ),
      ],
    ),
    'circleImageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.linear,
          delay: 300.ms,
          duration: 10000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
        appBar: AppBar(
          backgroundColor: const Color(0xFFEFDB06),
          iconTheme: const IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          actions: const [],
          flexibleSpace: FlexibleSpaceBar(
            title: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.98, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/referee-vision-shbzkf/assets/yw9n47unaq3o/RV_2.0.png',
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      fit: BoxFit.contain,
                      alignment: const Alignment(-1.0, 1.0),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.11, 0.51),
                  child: Text(
                    'REFEREE VISI',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          color: Colors.black,
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).headlineLargeFamily),
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.57, 0.46),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.07,
                    height: MediaQuery.sizeOf(context).width * 0.07,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/referee-vision-shbzkf/assets/bova9sb32sri/bb.png',
                      fit: BoxFit.contain,
                      alignment: const Alignment(0.0, 0.0),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['circleImageOnPageLoadAnimation']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.71, 0.51),
                  child: Text(
                    'N',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: Colors.black,
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Open Sans'),
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.91, 0.43),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/Flag_of_India.png',
                      width: MediaQuery.sizeOf(context).width * 0.08,
                      height: 25.0,
                      fit: BoxFit.fill,
                      alignment: const Alignment(0.0, 0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.82, 1.03),
                  child: Text(
                    'One stop to \"rule\" them all',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'North_wave',
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('North_wave'),
                        ),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
            titlePadding: const EdgeInsets.all(6.0),
          ),
          toolbarHeight: MediaQuery.sizeOf(context).height * 0.1,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/bg6.jpg',
                      width: 400.0,
                      height: 700.0,
                      fit: BoxFit.fill,
                      alignment: const Alignment(0.0, 0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView(
                      padding: const EdgeInsets.fromLTRB(
                        0.0,
                        0,
                        0,
                        0,
                      ),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 0.0,
                        mainAxisSpacing: 0.0,
                        childAspectRatio: 1.0,
                      ),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('About');
                            },
                            text: 'About',
                            options: FFButtonOptions(
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFFFCEC02),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFFFCEC02),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Referees');
                            },
                            text: 'Referees',
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFF613B81),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFF613B81),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Books');
                            },
                            text: 'Books',
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFF4BB5F7),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFF4BB5F7),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Videos');
                            },
                            text: 'Videos',
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFF50CE6D),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFF50CE6D),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Webinars');
                            },
                            text: 'Webinars',
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFFB152E6),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFFB152E6),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Coaches');
                            },
                            text: 'Coaches',
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFFF9B52F),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFFF9B52F),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Vault');
                            },
                            text: 'Vault',
                            options: FFButtonOptions(
                              height: 0.0,
                              padding: const EdgeInsets.all(14.0),
                              iconPadding: const EdgeInsets.all(18.0),
                              color: const Color(0xFFFE7867),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFFFE7867),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.89, -0.17),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      unawaited(
                        () async {
                          await launchURL(
                              'https://www.instagram.com/refereevision/');
                        }(),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/2437730f7e3a5705e205e67fa2cd1020-removebg-preview.png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.04,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.87, -0.58),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      unawaited(
                        () async {
                          await launchURL('https://www.refereevision.com/');
                        }(),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/internet-removebg-preview.png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.89, 0.04),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      unawaited(
                        () async {
                          await launchURL(
                              'https://www.facebook.com/RefereeVision/');
                        }(),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Facebook-logo.png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.86, 0.26),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      unawaited(
                        () async {
                          await launchURL('https://twitter.com/RefereeVision');
                        }(),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/twitter-removebg-preview.png',
                        width: MediaQuery.sizeOf(context).width * 0.08,
                        height: MediaQuery.sizeOf(context).height * 0.04,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.88, -0.38),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      unawaited(
                        () async {
                          await launchURL(
                              'https://www.youtube.com/channel/UCtaLchKKlQeVbHzoAqXGydA');
                        }(),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Youtube(amin).png',
                        width: MediaQuery.sizeOf(context).width * 0.1,
                        height: MediaQuery.sizeOf(context).height * 0.05,
                        fit: BoxFit.cover,
                      ),
                    ),
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
