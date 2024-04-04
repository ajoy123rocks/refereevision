import '/flutter_flow/flutter_flow_util.dart';
import 'books_regulations_widget.dart' show BooksRegulationsWidget;
import 'package:flutter/material.dart';

class BooksRegulationsModel extends FlutterFlowModel<BooksRegulationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
