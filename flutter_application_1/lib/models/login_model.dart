// ignore_for_file: unused_import

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter_application_1/pages/login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for usrnameemailtxtfld widget.
  FocusNode? usrnameemailtxtfldFocusNode;
  TextEditingController? usrnameemailtxtfldController;
  String? Function(BuildContext, String?)?
      usrnameemailtxtfldControllerValidator;
  // State field(s) for pwdtxtfld widget.
  FocusNode? pwdtxtfldFocusNode;
  TextEditingController? pwdtxtfldController;
  late bool pwdtxtfldVisibility;
  String? Function(BuildContext, String?)? pwdtxtfldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pwdtxtfldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usrnameemailtxtfldFocusNode?.dispose();
    usrnameemailtxtfldController?.dispose();

    pwdtxtfldFocusNode?.dispose();
    pwdtxtfldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
