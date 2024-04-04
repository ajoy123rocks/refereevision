import '/flutter_flow/flutter_flow_util.dart';
import 'videos_t_f_widget.dart' show VideosTFWidget;
import 'package:flutter/material.dart';

class VideosTFModel extends FlutterFlowModel<VideosTFWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
