import '/flutter_flow/flutter_flow_util.dart';
import 'books3_x3_widget.dart' show Books3X3Widget;
import 'package:flutter/material.dart';

class Books3X3Model extends FlutterFlowModel<Books3X3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
