import '/flutter_flow/flutter_flow_util.dart';
import 'videos_contact_widget.dart' show VideosContactWidget;
import 'package:flutter/material.dart';

class VideosContactModel extends FlutterFlowModel<VideosContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
