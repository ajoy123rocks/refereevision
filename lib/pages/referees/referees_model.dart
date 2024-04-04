import '/flutter_flow/flutter_flow_util.dart';
import 'referees_widget.dart' show RefereesWidget;
import 'package:flutter/material.dart';

class RefereesModel extends FlutterFlowModel<RefereesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
