import '/flutter_flow/flutter_flow_util.dart';
import 'videos_g_i_widget.dart' show VideosGIWidget;
import 'package:flutter/material.dart';

class VideosGIModel extends FlutterFlowModel<VideosGIWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
