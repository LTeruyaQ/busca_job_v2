import '/app_content/component/head_page/head_page_widget.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conta_page_model.dart';
export 'conta_page_model.dart';

class ContaPageWidget extends StatefulWidget {
  const ContaPageWidget({super.key});

  @override
  State<ContaPageWidget> createState() => _ContaPageWidgetState();
}

class _ContaPageWidgetState extends State<ContaPageWidget> {
  late ContaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContaPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          wrapWithModel(
            model: _model.headPageModel,
            updateCallback: () => safeSetState(() {}),
            child: HeadPageWidget(),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 0.0, 12.0),
                    child: Text(
                      'Configuações do perfil',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('editPerfilPage');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x3416202A),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('editPerfilPage');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Editar perfil',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.9, 0.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0x3416202A),
                        offset: Offset(
                          0.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Alterar senha',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.9, 0.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth('loginPage', context.mounted);
                      },
                      text: 'Log Out',
                      options: FFButtonOptions(
                        width: 90.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodySmall
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                        elevation: 1.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        await PessoasTable().delete(
                          matchingRows: (rows) => rows.eq(
                            'userId',
                            currentUserUid,
                          ),
                        );

                        context.pushNamed('loginPage');
                      },
                      text: 'Apagar conta',
                      options: FFButtonOptions(
                        width: 150.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodySmall
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                        elevation: 1.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 90.0)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
