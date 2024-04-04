import '/flutter_flow/flutter_flow_util.dart';
import 'vault_assist_widget.dart' show VaultAssistWidget;
import 'package:flutter/material.dart';

class VaultAssistModel extends FlutterFlowModel<VaultAssistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
