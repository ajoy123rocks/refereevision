import '/flutter_flow/flutter_flow_util.dart';
import 'vault_tools_widget.dart' show VaultToolsWidget;
import 'package:flutter/material.dart';

class VaultToolsModel extends FlutterFlowModel<VaultToolsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
