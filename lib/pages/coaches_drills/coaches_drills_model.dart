import '/flutter_flow/flutter_flow_util.dart';
import 'coaches_drills_widget.dart' show CoachesDrillsWidget;
import 'package:flutter/material.dart';

class CoachesDrillsModel extends FlutterFlowModel<CoachesDrillsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
