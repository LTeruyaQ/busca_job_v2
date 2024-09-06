import '/app_content/component/head_page/head_page_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'conta_page_widget.dart' show ContaPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContaPageModel extends FlutterFlowModel<ContaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headPage component.
  late HeadPageModel headPageModel;

  @override
  void initState(BuildContext context) {
    headPageModel = createModel(context, () => HeadPageModel());
  }

  @override
  void dispose() {
    headPageModel.dispose();
  }
}
