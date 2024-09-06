import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_model.dart';
export 'app_bar_model.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  late AppBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 501.0,
      height: 82.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 5.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: FutureBuilder<List<PessoasRow>>(
                                    future: PessoasTable().querySingleRow(
                                      queryFn: (q) => q.eq(
                                        'email_Pessoa',
                                        currentUserEmail,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<PessoasRow> imagePessoasRowList =
                                          snapshot.data!;

                                      final imagePessoasRow =
                                          imagePessoasRowList.isNotEmpty
                                              ? imagePessoasRowList.first
                                              : null;

                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            imagePessoasRow?.urlImagemPessoa,
                                            'https://img.freepik.com/premium-vector/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-vector-illustration_561158-3407.jpg?w=360',
                                          ),
                                          width: 50.0,
                                          height: 50.0,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 50.0, 0.0),
                          child: Text(
                            'BuscaJob',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w100,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.notifications_sharp,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
