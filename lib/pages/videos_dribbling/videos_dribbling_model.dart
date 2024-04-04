import '/flutter_flow/flutter_flow_util.dart';
import 'videos_dribbling_widget.dart' show VideosDribblingWidget;
import 'package:flutter/material.dart';

class VideosDribblingModel extends FlutterFlowModel<VideosDribblingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
