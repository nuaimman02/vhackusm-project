// ignore_for_file: unused_import

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter_application_1/pages/add_debt_widget.dart' show AddDebtWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddDebtModel extends FlutterFlowModel<AddDebtWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  String? _fullNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for age widget.
  FocusNode? ageFocusNode1;
  TextEditingController? ageController1;
  String? Function(BuildContext, String?)? ageController1Validator;
  String? _ageController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for age widget.
  FocusNode? ageFocusNode2;
  TextEditingController? ageController2;
  String? Function(BuildContext, String?)? ageController2Validator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for dateOfBirth widget.
  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthController;
  final dateOfBirthMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? dateOfBirthControllerValidator;
  String? _dateOfBirthControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    fullNameControllerValidator = _fullNameControllerValidator;
    ageController1Validator = _ageController1Validator;
    dateOfBirthControllerValidator = _dateOfBirthControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameController?.dispose();

    ageFocusNode1?.dispose();
    ageController1?.dispose();

    ageFocusNode2?.dispose();
    ageController2?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    dateOfBirthFocusNode?.dispose();
    dateOfBirthController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
