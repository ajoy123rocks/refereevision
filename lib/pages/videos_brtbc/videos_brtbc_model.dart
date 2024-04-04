import '/flutter_flow/flutter_flow_util.dart';
import 'videos_brtbc_widget.dart' show VideosBrtbcWidget;
import 'package:flutter/material.dart';

class VideosBrtbcModel extends FlutterFlowModel<VideosBrtbcWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
