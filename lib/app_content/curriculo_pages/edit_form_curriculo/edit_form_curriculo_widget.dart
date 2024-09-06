import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_form_curriculo_model.dart';
export 'edit_form_curriculo_model.dart';

class EditFormCurriculoWidget extends StatefulWidget {
  const EditFormCurriculoWidget({
    super.key,
    required this.infoCurriculoedit,
  });

  final CurriculoRow? infoCurriculoedit;

  @override
  State<EditFormCurriculoWidget> createState() =>
      _EditFormCurriculoWidgetState();
}

class _EditFormCurriculoWidgetState extends State<EditFormCurriculoWidget> {
  late EditFormCurriculoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditFormCurriculoModel());

    _model.nomeCurriculoTextController ??=
        TextEditingController(text: widget!.infoCurriculoedit?.nomeCurriculo);
    _model.nomeCurriculoFocusNode ??= FocusNode();

    _model.descCurriculoTextController ??=
        TextEditingController(text: widget!.infoCurriculoedit?.descCurriculo);
    _model.descCurriculoFocusNode ??= FocusNode();

    _model.experienciaCurriculoTextController ??= TextEditingController(
        text: widget!.infoCurriculoedit?.experienciasCurriculo);
    _model.experienciaCurriculoFocusNode ??= FocusNode();

    _model.formacaoCurriculoTextController ??= TextEditingController(
        text: widget!.infoCurriculoedit?.formacaoAcademicaCurriculo);
    _model.formacaoCurriculoFocusNode ??= FocusNode();

    _model.habilidadeCurriculoTextController ??=
        TextEditingController(text: widget!.infoCurriculoedit?.habilidades);
    _model.habilidadeCurriculoFocusNode ??= FocusNode();

    _model.certificacaoCurriculoTextController ??=
        TextEditingController(text: widget!.infoCurriculoedit?.certificacoes);
    _model.certificacaoCurriculoFocusNode ??= FocusNode();

    _model.idiomaCurriculoTextController ??=
        TextEditingController(text: widget!.infoCurriculoedit?.idiomas);
    _model.idiomaCurriculoFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
      child: FutureBuilder<List<PessoasRow>>(
        future: (_model.requestCompleter ??= Completer<List<PessoasRow>>()
              ..complete(PessoasTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'email_Pessoa',
                  currentUserEmail,
                ),
              )))
            .future,
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<PessoasRow> checkoutBottomSheet2PessoasRowList = snapshot.data!;

          final checkoutBottomSheet2PessoasRow =
              checkoutBottomSheet2PessoasRowList.isNotEmpty
                  ? checkoutBottomSheet2PessoasRowList.first
                  : null;

          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x25090F13),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Container(
                          width: 60.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 44.0,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Editar curriculo',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Preencha com as suas informações, capriche! =)',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 24.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 200.0,
                                      child: TextFormField(
                                        controller:
                                            _model.nomeCurriculoTextController,
                                        focusNode:
                                            _model.nomeCurriculoFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Nome',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Nome',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF8E9090),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .nomeCurriculoTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 200.0,
                                      child: TextFormField(
                                        controller:
                                            _model.descCurriculoTextController,
                                        focusNode:
                                            _model.descCurriculoFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelText: 'Descrição',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Descrição',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF8E9090),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .descCurriculoTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  child: TextFormField(
                                    controller: _model
                                        .experienciaCurriculoTextController,
                                    focusNode:
                                        _model.experienciaCurriculoFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Experiência',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Experiência',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8E9090),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .experienciaCurriculoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  child: TextFormField(
                                    controller:
                                        _model.formacaoCurriculoTextController,
                                    focusNode:
                                        _model.formacaoCurriculoFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Formação Academica',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Formação Academica',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8E9090),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .formacaoCurriculoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  child: TextFormField(
                                    controller: _model
                                        .habilidadeCurriculoTextController,
                                    focusNode:
                                        _model.habilidadeCurriculoFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Habilidade',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Habilidade',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8E9090),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .habilidadeCurriculoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  child: TextFormField(
                                    controller: _model
                                        .certificacaoCurriculoTextController,
                                    focusNode:
                                        _model.certificacaoCurriculoFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Certificações',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Certificações',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8E9090),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .certificacaoCurriculoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  child: TextFormField(
                                    controller:
                                        _model.idiomaCurriculoTextController,
                                    focusNode: _model.idiomaCurriculoFocusNode,
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Idioma',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Idioma',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF8E9090),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .idiomaCurriculoTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await CurriculoTable().update(
                                      data: {
                                        'nomeCurriculo': _model
                                            .nomeCurriculoTextController.text,
                                        'descCurriculo': _model
                                            .descCurriculoTextController.text,
                                        'experiencias_Curriculo': _model
                                            .experienciaCurriculoTextController
                                            .text,
                                        'formacaoAcademica_Curriculo': _model
                                            .formacaoCurriculoTextController
                                            .text,
                                        'habilidades': _model
                                            .habilidadeCurriculoTextController
                                            .text,
                                        'certificacoes': _model
                                            .certificacaoCurriculoTextController
                                            .text,
                                        'idiomas': _model
                                            .idiomaCurriculoTextController.text,
                                      },
                                      matchingRows: (rows) => rows.eq(
                                        'id_Curriculo',
                                        widget!.infoCurriculoedit?.idCurriculo,
                                      ),
                                    );
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                    context.safePop();
                                  },
                                  text: 'Salvar',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
