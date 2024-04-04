import '/flutter_flow/flutter_flow_util.dart';
import 'videos_travel_widget.dart' show VideosTravelWidget;
import 'package:flutter/material.dart';

class VideosTravelModel extends FlutterFlowModel<VideosTravelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
