import '/flutter_flow/flutter_flow_util.dart';
import 'books_curriculum_widget.dart' show BooksCurriculumWidget;
import 'package:flutter/material.dart';

class BooksCurriculumModel extends FlutterFlowModel<BooksCurriculumWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
