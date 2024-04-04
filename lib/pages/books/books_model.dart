import '/flutter_flow/flutter_flow_util.dart';
import 'books_widget.dart' show BooksWidget;
import 'package:flutter/material.dart';

class BooksModel extends FlutterFlowModel<BooksWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
