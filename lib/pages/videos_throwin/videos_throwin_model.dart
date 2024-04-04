import '/flutter_flow/flutter_flow_util.dart';
import 'videos_throwin_widget.dart' show VideosThrowinWidget;
import 'package:flutter/material.dart';

class VideosThrowinModel extends FlutterFlowModel<VideosThrowinWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
