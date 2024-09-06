import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_perfil_page_widget.dart' show EditPerfilPageWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPerfilPageModel extends FlutterFlowModel<EditPerfilPageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nameUserChange widget.
  FocusNode? nameUserChangeFocusNode;
  TextEditingController? nameUserChangeTextController;
  String? Function(BuildContext, String?)?
      nameUserChangeTextControllerValidator;
  // State field(s) for nameSocialChange widget.
  FocusNode? nameSocialChangeFocusNode;
  TextEditingController? nameSocialChangeTextController;
  String? Function(BuildContext, String?)?
      nameSocialChangeTextControllerValidator;
  // State field(s) for emailUserChange widget.
  FocusNode? emailUserChangeFocusNode;
  TextEditingController? emailUserChangeTextController;
  String? Function(BuildContext, String?)?
      emailUserChangeTextControllerValidator;
  // State field(s) for telefoneUserChange widget.
  FocusNode? telefoneUserChangeFocusNode;
  TextEditingController? telefoneUserChangeTextController;
  String? Function(BuildContext, String?)?
      telefoneUserChangeTextControllerValidator;
  // State field(s) for cidadeChange widget.
  String? cidadeChangeValue;
  FormFieldController<String>? cidadeChangeValueController;
  // State field(s) for estadoChange widget.
  String? estadoChangeValue;
  FormFieldController<String>? estadoChangeValueController;
  // State field(s) for bioChange widget.
  FocusNode? bioChangeFocusNode;
  TextEditingController? bioChangeTextController;
  String? Function(BuildContext, String?)? bioChangeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameUserChangeFocusNode?.dispose();
    nameUserChangeTextController?.dispose();

    nameSocialChangeFocusNode?.dispose();
    nameSocialChangeTextController?.dispose();

    emailUserChangeFocusNode?.dispose();
    emailUserChangeTextController?.dispose();

    telefoneUserChangeFocusNode?.dispose();
    telefoneUserChangeTextController?.dispose();

    bioChangeFocusNode?.dispose();
    bioChangeTextController?.dispose();
  }
}
