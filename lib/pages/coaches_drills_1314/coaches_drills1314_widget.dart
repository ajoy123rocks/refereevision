import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'coaches_drills1314_model.dart';
export 'coaches_drills1314_model.dart';

class CoachesDrills1314Widget extends StatefulWidget {
  const CoachesDrills1314Widget({super.key});

  @override
  State<CoachesDrills1314Widget> createState() =>
      _CoachesDrills1314WidgetState();
}

class _CoachesDrills1314WidgetState extends State<CoachesDrills1314Widget> {
  late CoachesDrills1314Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoachesDrills1314Model());

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
                    '13-14  \nYEAR OLDS',
                    textAlign: TextAlign.center,
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
                  padding: const EdgeInsets.all(2.0),
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
                            url: 'https://youtu.be/ibizolSVuTw',
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
                            url: 'https://youtu.be/GbewmjhFIAY',
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
                            url: 'https://youtu.be/-lyHYdQ44A0',
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
                            url: 'https://youtu.be/Ez9tjbsLglc',
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
                            url: 'https://youtu.be/g47mr40SzMo',
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
                            url: 'https://youtu.be/gWJ-HnlyxxM',
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
                            url: 'https://youtu.be/n4rLzvy1Les',
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
                            url: 'https://youtu.be/rc-YPtXdaHM',
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
                            url: 'https://youtu.be/rVP_a78LoG8',
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
                            url: 'https://youtu.be/_wPl4lTRjQU',
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
                            url: 'https://youtu.be/mY17_1llei8',
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
                            url: 'https://youtu.be/q_edt-X9t7s',
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
                            url: 'https://youtu.be/3eOM1luk960',
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
                            url: 'https://youtu.be/Y9BeNKPh9Fw',
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
