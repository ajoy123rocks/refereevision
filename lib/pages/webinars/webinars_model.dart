import '/flutter_flow/flutter_flow_util.dart';
import 'webinars_widget.dart' show WebinarsWidget;
import 'package:flutter/material.dart';

class WebinarsModel extends FlutterFlowModel<WebinarsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
