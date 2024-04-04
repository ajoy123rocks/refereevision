import '/flutter_flow/flutter_flow_util.dart';
import 'videos_game_ctrl_widget.dart' show VideosGameCtrlWidget;
import 'package:flutter/material.dart';

class VideosGameCtrlModel extends FlutterFlowModel<VideosGameCtrlWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
