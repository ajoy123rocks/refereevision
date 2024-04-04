import '/flutter_flow/flutter_flow_util.dart';
import 'webinars_game_mgmt_widget.dart' show WebinarsGameMgmtWidget;
import 'package:flutter/material.dart';

class WebinarsGameMgmtModel extends FlutterFlowModel<WebinarsGameMgmtWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
