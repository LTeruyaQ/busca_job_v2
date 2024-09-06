import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'edit_form_curriculo_widget.dart' show EditFormCurriculoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditFormCurriculoModel extends FlutterFlowModel<EditFormCurriculoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeCurriculo widget.
  FocusNode? nomeCurriculoFocusNode;
  TextEditingController? nomeCurriculoTextController;
  String? Function(BuildContext, String?)? nomeCurriculoTextControllerValidator;
  // State field(s) for descCurriculo widget.
  FocusNode? descCurriculoFocusNode;
  TextEditingController? descCurriculoTextController;
  String? Function(BuildContext, String?)? descCurriculoTextControllerValidator;
  // State field(s) for experienciaCurriculo widget.
  FocusNode? experienciaCurriculoFocusNode;
  TextEditingController? experienciaCurriculoTextController;
  String? Function(BuildContext, String?)?
      experienciaCurriculoTextControllerValidator;
  // State field(s) for formacaoCurriculo widget.
  FocusNode? formacaoCurriculoFocusNode;
  TextEditingController? formacaoCurriculoTextController;
  String? Function(BuildContext, String?)?
      formacaoCurriculoTextControllerValidator;
  // State field(s) for habilidadeCurriculo widget.
  FocusNode? habilidadeCurriculoFocusNode;
  TextEditingController? habilidadeCurriculoTextController;
  String? Function(BuildContext, String?)?
      habilidadeCurriculoTextControllerValidator;
  // State field(s) for certificacaoCurriculo widget.
  FocusNode? certificacaoCurriculoFocusNode;
  TextEditingController? certificacaoCurriculoTextController;
  String? Function(BuildContext, String?)?
      certificacaoCurriculoTextControllerValidator;
  // State field(s) for idiomaCurriculo widget.
  FocusNode? idiomaCurriculoFocusNode;
  TextEditingController? idiomaCurriculoTextController;
  String? Function(BuildContext, String?)?
      idiomaCurriculoTextControllerValidator;
  Completer<List<PessoasRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeCurriculoFocusNode?.dispose();
    nomeCurriculoTextController?.dispose();

    descCurriculoFocusNode?.dispose();
    descCurriculoTextController?.dispose();

    experienciaCurriculoFocusNode?.dispose();
    experienciaCurriculoTextController?.dispose();

    formacaoCurriculoFocusNode?.dispose();
    formacaoCurriculoTextController?.dispose();

    habilidadeCurriculoFocusNode?.dispose();
    habilidadeCurriculoTextController?.dispose();

    certificacaoCurriculoFocusNode?.dispose();
    certificacaoCurriculoTextController?.dispose();

    idiomaCurriculoFocusNode?.dispose();
    idiomaCurriculoTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
