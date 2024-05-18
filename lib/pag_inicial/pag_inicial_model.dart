import '/flutter_flow/flutter_flow_util.dart';
import 'pag_inicial_widget.dart' show PagInicialWidget;
import 'package:flutter/material.dart';

class PagInicialModel extends FlutterFlowModel<PagInicialWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
