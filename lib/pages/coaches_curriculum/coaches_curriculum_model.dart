import '/flutter_flow/flutter_flow_util.dart';
import 'coaches_curriculum_widget.dart' show CoachesCurriculumWidget;
import 'package:flutter/material.dart';

class CoachesCurriculumModel extends FlutterFlowModel<CoachesCurriculumWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
