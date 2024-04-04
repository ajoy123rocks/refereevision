import '/flutter_flow/flutter_flow_util.dart';
import 'books_equipment_widget.dart' show BooksEquipmentWidget;
import 'package:flutter/material.dart';

class BooksEquipmentModel extends FlutterFlowModel<BooksEquipmentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
