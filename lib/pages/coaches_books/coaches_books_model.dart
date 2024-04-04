import '/flutter_flow/flutter_flow_util.dart';
import 'coaches_books_widget.dart' show CoachesBooksWidget;
import 'package:flutter/material.dart';

class CoachesBooksModel extends FlutterFlowModel<CoachesBooksWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
