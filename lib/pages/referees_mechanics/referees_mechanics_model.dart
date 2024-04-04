import '/flutter_flow/flutter_flow_util.dart';
import 'referees_mechanics_widget.dart' show RefereesMechanicsWidget;
import 'package:flutter/material.dart';

class RefereesMechanicsModel extends FlutterFlowModel<RefereesMechanicsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
