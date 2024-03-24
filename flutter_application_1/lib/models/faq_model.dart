// ignore_for_file: unused_import

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter_application_1/pages/faq_widget.dart' show FaqWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FaqModel extends FlutterFlowModel<FaqWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
