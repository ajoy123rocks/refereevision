import '/flutter_flow/flutter_flow_util.dart';
import 'videos_cylinder_widget.dart' show VideosCylinderWidget;
import 'package:flutter/material.dart';

class VideosCylinderModel extends FlutterFlowModel<VideosCylinderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
