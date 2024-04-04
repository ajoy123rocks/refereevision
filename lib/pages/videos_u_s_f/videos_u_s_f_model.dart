import '/flutter_flow/flutter_flow_util.dart';
import 'videos_u_s_f_widget.dart' show VideosUSFWidget;
import 'package:flutter/material.dart';

class VideosUSFModel extends FlutterFlowModel<VideosUSFWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
