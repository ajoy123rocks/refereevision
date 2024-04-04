import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'coaches_drills_mini_model.dart';
export 'coaches_drills_mini_model.dart';

class CoachesDrillsMiniWidget extends StatefulWidget {
  const CoachesDrillsMiniWidget({super.key});

  @override
  State<CoachesDrillsMiniWidget> createState() =>
      _CoachesDrillsMiniWidgetState();
}

class _CoachesDrillsMiniWidgetState extends State<CoachesDrillsMiniWidget> {
  late CoachesDrillsMiniModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoachesDrillsMiniModel());

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
                context.pushNamed('Coaches_Drills');
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
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    'MINI',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.black,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
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
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 1.0,
                      ),
                      scrollDirection: Axis.vertical,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/7jDI0RhUKFw',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.76, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/n6M2D1v_rvo',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/62PfwzDH9-Q',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/Uy-weZEXwQE',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/wAaPpI4lc3c',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/wP677WwS_Gg',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/EXxgJjSKyK4',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/N9JezhYPkEA',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/FYRks9lMICo',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/1tRUZiCQxyE',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/KMiHGBQLdIA',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/CWEabjVJw3Q',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/eIBkyigsYtk',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/K9usXI0yMow',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/k42m3gQjbpg',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/kvkSCEds-0Q',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/dxgVng0i30o',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/TnP-8VAahz0',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/GVmvZ80IsyI',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/ZzbEUPnaQ6Q',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/e70qtY8Yqlw',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/pF-Xp--3gFA',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/E3cMXEkhik0',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/8gOTHLVuP7o',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/V5aTR8P2iRE',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/Dikg7f870iM',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/ePX7umliH_s',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/qV6hq_IEgGY',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.71, -0.92),
                          child: FlutterFlowYoutubePlayer(
                            url: 'https://youtu.be/UNoBB6xcpmA',
                            width: MediaQuery.sizeOf(context).width * 0.4,
                            height: MediaQuery.sizeOf(context).height * 0.12,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                      ],
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
