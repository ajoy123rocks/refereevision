import '/flutter_flow/flutter_flow_util.dart';
import 'vault_widget.dart' show VaultWidget;
import 'package:flutter/material.dart';

class VaultModel extends FlutterFlowModel<VaultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
