import '/flutter_flow/flutter_flow_util.dart';
import 'videos_a_o_s_widget.dart' show VideosAOSWidget;
import 'package:flutter/material.dart';

class VideosAOSModel extends FlutterFlowModel<VideosAOSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
