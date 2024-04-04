import '/flutter_flow/flutter_flow_util.dart';
import 'books_rules_widget.dart' show BooksRulesWidget;
import 'package:flutter/material.dart';

class BooksRulesModel extends FlutterFlowModel<BooksRulesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
