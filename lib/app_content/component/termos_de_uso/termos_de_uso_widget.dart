import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termos_de_uso_model.dart';
export 'termos_de_uso_model.dart';

class TermosDeUsoWidget extends StatefulWidget {
  const TermosDeUsoWidget({super.key});

  @override
  State<TermosDeUsoWidget> createState() => _TermosDeUsoWidgetState();
}

class _TermosDeUsoWidgetState extends State<TermosDeUsoWidget> {
  late TermosDeUsoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosDeUsoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 8.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 700.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          5.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Termos de Uso e Política de Privacidade',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 44.0,
                                icon: Icon(
                                  Icons.close_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 665.0,
                          height: 393.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    'Termos de Uso\nBem-vindo ao nosso serviço. Estes Termos de Uso regem seu acesso e uso do nosso site e dos serviços fornecidos. Ao acessar ou usar nosso site, você concorda com estes Termos de Uso na íntegra.\n\n1. Aceitação dos Termos\nAo usar nossos serviços, você concorda em estar vinculado a estes Termos de Uso e a todas as leis e regulamentações aplicáveis. Se você não concorda com algum destes termos, está proibido de usar ou acessar este site.\n\n2. Modificações dos Termos\nReservamo-nos o direito de revisar os Termos de Uso a qualquer momento sem aviso prévio. Ao usar este site, você concorda em se comprometer com a versão atual destes Termos de Uso.\n\n3. Uso dos Serviços\nVocê concorda em usar nossos serviços apenas para fins legais e de acordo com os Termos de Uso. É proibido:\nUsar os serviços de maneira que possa danificar, desativar, sobrecarregar ou prejudicar o site.\nTentar obter acesso não autorizado a qualquer parte do site.\n\n4. Propriedade Intelectual\nTodo o conteúdo incluído no site, como texto, gráficos, logos, ícones de botão, imagens, clipes de áudio, e software, é de nossa propriedade ou de nossos fornecedores de conteúdo e protegido pelas leis de direitos autorais internacionais.\n\n5. Isenção de Garantias\nOs serviços são fornecidos \"como estão\" e \"como disponíveis\". Não garantimos que os serviços estarão disponíveis em qualquer momento específico ou que serão ininterruptos ou livres de erros.\n\n6. Limitação de Responsabilidade\nEm nenhuma hipótese seremos responsáveis por quaisquer danos diretos, indiretos, incidentais, especiais ou consequenciais resultantes do uso ou da incapacidade de usar os serviços.\n\n7. Indenização\nVocê concorda em indenizar, defender e isentar nossa empresa, suas subsidiárias, afiliadas, diretores, agentes e funcionários, de qualquer reivindicação ou demanda, incluindo honorários advocatícios, feita por qualquer terceiro devido ao seu uso dos serviços.\n\n8. Lei Aplicável\nEstes Termos de Uso serão regidos e interpretados de acordo com as leis do Brasil.\n\nPolítica de Privacidade (LGPD)\n1. Coleta de Informações\nColetamos informações pessoais que você nos fornece diretamente, como quando você cria uma conta, preenche um formulário ou entra em contato conosco. As informações coletadas podem incluir seu nome, endereço de e-mail, número de telefone, e outras informações relevantes.\n\n2. Uso das Informações\nUtilizamos suas informações para:\nFornecer e melhorar nossos serviços.\nPersonalizar a experiência do usuário.\nEnviar comunicações promocionais e informativas, com seu consentimento.\n\n3. Compartilhamento de Informações\nNão vendemos, trocamos ou de outra forma transferimos suas informações pessoais para terceiros sem seu consentimento, exceto para os propósitos expressamente previstos nesta política.\n\n4. Segurança das Informações\nImplementamos medidas de segurança para proteger suas informações pessoais contra acesso não autorizado, alteração, divulgação ou destruição.\n\n5. Seus Direitos\nDe acordo com a Lei Geral de Proteção de Dados (LGPD), você tem o direito de:\nSolicitar o acesso aos seus dados pessoais.\nSolicitar a correção de dados incompletos, inexatos ou desatualizados.\nSolicitar a anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com a LGPD.\nSolicitar a portabilidade dos dados a outro fornecedor de serviço ou produto.\nSolicitar a eliminação dos dados pessoais tratados com o seu consentimento.\nObter informações sobre as entidades públicas e privadas com as quais realizamos uso compartilhado de dados.\n\n6. Alterações na Política de Privacidade\nReservamo-nos o direito de atualizar esta Política de Privacidade periodicamente. Recomendamos que você reveja esta política regularmente para se manter informado sobre como estamos protegendo suas informações.\n7. Contato\nSe você tiver alguma dúvida sobre esta Política de Privacidade ou sobre nossos procedimentos de coleta de dados, entre em contato conosco através do [seu endereço de e-mail de contato].',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
