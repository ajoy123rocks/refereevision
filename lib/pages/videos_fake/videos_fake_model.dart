import '/flutter_flow/flutter_flow_util.dart';
import 'videos_fake_widget.dart' show VideosFakeWidget;
import 'package:flutter/material.dart';

class VideosFakeModel extends FlutterFlowModel<VideosFakeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
