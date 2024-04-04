import '/flutter_flow/flutter_flow_util.dart';
import 'coaches_drills_mini_widget.dart' show CoachesDrillsMiniWidget;
import 'package:flutter/material.dart';

class CoachesDrillsMiniModel extends FlutterFlowModel<CoachesDrillsMiniWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
