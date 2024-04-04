import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'referees_fitnesstests_model.dart';
export 'referees_fitnesstests_model.dart';

class RefereesFitnesstestsWidget extends StatefulWidget {
  const RefereesFitnesstestsWidget({super.key});

  @override
  State<RefereesFitnesstestsWidget> createState() =>
      _RefereesFitnesstestsWidgetState();
}

class _RefereesFitnesstestsWidgetState
    extends State<RefereesFitnesstestsWidget> {
  late RefereesFitnesstestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefereesFitnesstestsModel());

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
          backgroundColor: const Color(0xFF613B81),
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
              context.pushNamed('Referees');
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
              Text(
                'FITNESS TESTS',
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
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.black,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 35.0,
                  fillColor: Colors.black,
                  icon: const Icon(
                    Icons.house,
                    color: Color(0xFF613B81),
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
                      SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://library.fibairef.basketball/images/documents/35bd8c8b5c831b242ae0b77b61088378/GOL2021_23__FIBA_Referees_Basic_Fitness_Test.mp3');
                                  },
                                  text: 'FIBA BASIC FITNESS TEST (Audio)',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 40.0,
                                    padding: const EdgeInsets.all(10.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-3.06, -0.86),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://library.fibairef.basketball/images/documents/568b699453a1a2c1d415a6187e9a685f/FIBA_Yo_Yo_Elite_Test_May_2019.mp3');
                                  },
                                  text: 'FIBA YO YO ELITE FITNESS TEST (Audio)',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 40.0,
                                    padding: const EdgeInsets.all(8.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.07, -0.59),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'FIBA YO YO ELITE FITNESS TEST SETUP GUIDELINES',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: const Color(0xFFFFE300),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.03, -0.3),
                              child: FlutterFlowVideoPlayer(
                                path:
                                    'https://library.fibairef.basketball/images/documents/cf943473ff20941a653bc7b48b74c666/FIBA_Elite_YoYo_FitnessTest__Set_up_Guidelines_low.mp4',
                                videoType: VideoType.network,
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                autoPlay: false,
                                looping: true,
                                showControls: true,
                                allowFullScreen: true,
                                allowPlaybackSpeedMenu: false,
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.21),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1qU6tg3rlTOk06lVfiEpwkD0oh_SNb56O/view?pli=1');
                                  },
                                  text: 'FIBA BASIC FITNESS TEST (Version 4.0)',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 40.0,
                                    padding: const EdgeInsets.all(10.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.42),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1MqUx9ruNXlpez0-kzLJ2fBUNJM9NR62R/view');
                                  },
                                  text:
                                      'FIBA YO YO ELITE FITNESS TEST (Version 2.0 - June 2020)',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 40.0,
                                    padding: const EdgeInsets.all(10.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.63),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await launchURL(
                                        'https://drive.google.com/file/d/1e6EqEOa3DwByIIIvFTChUP7xNdpuHlCx/view');
                                  },
                                  text: 'FIBA FITNESS TESTS - DECODED',
                                  options: FFButtonOptions(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 40.0,
                                    padding: const EdgeInsets.all(10.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
