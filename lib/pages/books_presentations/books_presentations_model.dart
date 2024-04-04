import '/flutter_flow/flutter_flow_util.dart';
import 'books_presentations_widget.dart' show BooksPresentationsWidget;
import 'package:flutter/material.dart';

class BooksPresentationsModel
    extends FlutterFlowModel<BooksPresentationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
