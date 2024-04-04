import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'referees_warmupexercises_model.dart';
export 'referees_warmupexercises_model.dart';

class RefereesWarmupexercisesWidget extends StatefulWidget {
  const RefereesWarmupexercisesWidget({super.key});

  @override
  State<RefereesWarmupexercisesWidget> createState() =>
      _RefereesWarmupexercisesWidgetState();
}

class _RefereesWarmupexercisesWidgetState
    extends State<RefereesWarmupexercisesWidget> {
  late RefereesWarmupexercisesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RefereesWarmupexercisesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'WARM UP \nEXERCISES',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.black,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
            child: Container(
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
                        height: 744.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'ACTIVE STRETCHING',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(0.01, 0.98),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/Cf0VGIWa5eM',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'BACK KICKS',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.19),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/5YHldELDQsU',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'FOOTWORK ACTIVATION',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/JmA2aeFqyXk',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'HALF COURT ACTIVATION',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.02, 0.37),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/_u7hWjA_jSA',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'HIGH KNEES',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/swd3bYNRe8k',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'KARAOKE',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/TmVWBcTs2OE',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'SIDE TO SIDE',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/lR6-eS-fMf4',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'SIDE TO SIDE SPRINT',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/AVueE8lAc4E',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'NO LOOK SPRINT',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/CSN7LeM-0sk',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'SUICIDES',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/2bmK0idBMHA',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'TURNAROUND SPRINT',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/94onVkqlpJE',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'LAST 2 MIN SPRINT',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/21QL3mZZwhQ',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -0.81),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'NBA REFEREE FITNESS',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.04,
                                padding: const EdgeInsets.all(8.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFFFFE300),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 16.0,
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
                          alignment: const AlignmentDirectional(-0.05, -0.81),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/ZN4LpKA_ym4',
                            width: MediaQuery.sizeOf(context).width * 0.415,
                            height: MediaQuery.sizeOf(context).height * 0.123,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 10.0))
                          .addToStart(const SizedBox(height: 25.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
