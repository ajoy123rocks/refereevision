import '/flutter_flow/flutter_flow_util.dart';
import 'vault_micd_widget.dart' show VaultMicdWidget;
import 'package:flutter/material.dart';

class VaultMicdModel extends FlutterFlowModel<VaultMicdWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
