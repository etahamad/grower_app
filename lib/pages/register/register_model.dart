import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/pages/login_page/login_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for signupName widget.
  TextEditingController? signupNameController;
  String? Function(BuildContext, String?)? signupNameControllerValidator;
  // State field(s) for signupEmail widget.
  TextEditingController? signupEmailController;
  String? Function(BuildContext, String?)? signupEmailControllerValidator;
  // State field(s) for signupPassword widget.
  TextEditingController? signupPasswordController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)? signupPasswordControllerValidator;
  // State field(s) for signupPasswordConfirm widget.
  TextEditingController? signupPasswordConfirmController;
  late bool signupPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordConfirmControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    signupPasswordVisibility = false;
    signupPasswordConfirmVisibility = false;
  }

  void dispose() {
    signupNameController?.dispose();
    signupEmailController?.dispose();
    signupPasswordController?.dispose();
    signupPasswordConfirmController?.dispose();
  }

  /// Additional helper methods are added here.

}
