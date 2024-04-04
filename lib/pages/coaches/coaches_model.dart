import '/flutter_flow/flutter_flow_util.dart';
import 'coaches_widget.dart' show CoachesWidget;
import 'package:flutter/material.dart';

class CoachesModel extends FlutterFlowModel<CoachesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
