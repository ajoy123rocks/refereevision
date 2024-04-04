import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'vault_documentaries_model.dart';
export 'vault_documentaries_model.dart';

class VaultDocumentariesWidget extends StatefulWidget {
  const VaultDocumentariesWidget({super.key});

  @override
  State<VaultDocumentariesWidget> createState() =>
      _VaultDocumentariesWidgetState();
}

class _VaultDocumentariesWidgetState extends State<VaultDocumentariesWidget> {
  late VaultDocumentariesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VaultDocumentariesModel());

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
            backgroundColor: const Color(0xFFFE7867),
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
                context.pushNamed('Vault');
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
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'DOCUMENTARIES',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.black,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 35.0,
                  fillColor: Colors.black,
                  icon: const Icon(
                    Icons.house,
                    color: Color(0xFFFE7867),
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('HomePage');
                  },
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
                            url: 'https://youtu.be/Wsk_Xmu5FYk',
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
                            url: 'https://youtu.be/8j0c1Xb0eFI',
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
                            url: 'https://youtu.be/qZL69uidwI4',
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
                            url: 'https://youtu.be/c4JLeILISyk',
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
                            url: 'https://youtu.be/hyG57KmAsWQ',
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
                            url: 'https://youtu.be/DiTT070LTAg',
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
                            url: 'https://youtu.be/zcHuzAk7zJA',
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
                            url: 'https://youtu.be/zcHuzAk7zJA',
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
                            url: 'https://youtu.be/qcXfK6fo7sE',
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
                            url: 'https://youtu.be/lP9rsz6HK2Q',
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
                            url: 'https://youtu.be/P4nj6i6blU0',
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
                            url: 'https://youtu.be/N5ow_krd1G0',
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
                            url: 'https://youtu.be/FcJAz30kA9E',
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
                            url: 'https://youtu.be/dlhTJ2L4W0w',
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
                            url: 'https://youtu.be/oIg_517czyU',
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
                            url: 'https://youtu.be/-uswBAVOs7g',
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
                            url: 'https://youtu.be/MydkZvBWSo8',
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
                            url: 'https://youtu.be/-y2GRN9ozHg',
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
                            url: 'https://youtu.be/Zdlw_oC9yg0',
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
                            url: 'https://youtu.be/FcSaIpM-wVE',
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
                            url: 'https://youtu.be/OAznxyTFEUs',
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
                            url: 'https://youtu.be/EVNQU-7Q3G4',
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
                            url: 'https://youtu.be/7BiKWBYCcj0',
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
                            url: 'https://youtu.be/2TCjK4jRDfw',
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
                            url: 'https://youtu.be/2TCjK4jRDfw',
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
                            url: 'https://youtu.be/L0ciIFZk5cw',
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
                            url: 'https://youtu.be/XuTU6ek76hU',
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
                            url: 'https://youtu.be/UrI-wtErkeg',
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
                            url: 'https://youtu.be/IsGtgYkGS7w',
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
                            url: 'https://youtu.be/8lob_Tvg7LY',
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
                            url: 'https://youtu.be/AKwXf0EQLhU',
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
                            url: 'https://youtu.be/WqmerwsDyP0',
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
                            url: 'https://youtu.be/-tnY_x90WQ4',
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
                            url: 'https://youtu.be/UrI-wtErkeg',
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
                            url: 'https://youtu.be/OcSL88yTk4A',
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
                            url: 'https://youtu.be/jUvWXS8v7iw',
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
                            url: 'https://youtu.be/VO5v3-JJwVQ',
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
                            url: 'https://youtu.be/gOxjNzUzu9k',
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
                            url: 'https://youtu.be/OBYHY3BgYsc',
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
                            url: 'https://youtu.be/_SPId0jKex4',
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
                            url: 'https://youtu.be/Ig8QvVDvESU',
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
                            url: 'https://youtu.be/-tjC7j7QTyA',
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
                            url: 'https://youtu.be/JKFXoF4Cwl8',
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
                            url: 'https://youtu.be/B8C6DXRcvjM',
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
                            url: 'https://youtu.be/5De8l8ZNtS4',
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
