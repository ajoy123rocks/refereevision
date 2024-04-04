import '/flutter_flow/flutter_flow_util.dart';
import 'videos_others_widget.dart' show VideosOthersWidget;
import 'package:flutter/material.dart';

class VideosOthersModel extends FlutterFlowModel<VideosOthersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
