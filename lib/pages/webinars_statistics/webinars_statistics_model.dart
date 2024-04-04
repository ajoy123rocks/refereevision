import '/flutter_flow/flutter_flow_util.dart';
import 'webinars_statistics_widget.dart' show WebinarsStatisticsWidget;
import 'package:flutter/material.dart';

class WebinarsStatisticsModel
    extends FlutterFlowModel<WebinarsStatisticsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
