import '/flutter_flow/flutter_flow_util.dart';
import 'videos_screening_widget.dart' show VideosScreeningWidget;
import 'package:flutter/material.dart';

class VideosScreeningModel extends FlutterFlowModel<VideosScreeningWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
