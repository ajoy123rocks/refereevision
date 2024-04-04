import '/flutter_flow/flutter_flow_util.dart';
import 'videos_n_c_widget.dart' show VideosNCWidget;
import 'package:flutter/material.dart';

class VideosNCModel extends FlutterFlowModel<VideosNCWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
