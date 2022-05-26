import '../escolher_forma_de_pagamento/escolher_forma_de_pagamento_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformarDadosCartaoDeCreditoWidget extends StatefulWidget {
  const InformarDadosCartaoDeCreditoWidget({Key key}) : super(key: key);

  @override
  _InformarDadosCartaoDeCreditoWidgetState createState() =>
      _InformarDadosCartaoDeCreditoWidgetState();
}

class _InformarDadosCartaoDeCreditoWidgetState
    extends State<InformarDadosCartaoDeCreditoWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey4 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF003383),
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 50,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EscolherFormaDePagamentoWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          'Voltar para a última tela',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                  child: Text(
                    'COMPRAR TICKET',
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 22,
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          elevation: 2,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF003383),
                ),
                child: Text(
                  'Forneça as informações do seu cartão:',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                ),
              ),
              Divider(),
              Text(
                'Número do cartão:',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              Form(
                key: formKey3,
                autovalidateMode: AutovalidateMode.disabled,
                child: TextFormField(
                  controller: textController1,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController1',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  onFieldSubmitted: (_) async {
                    if (formKey3.currentState == null ||
                        !formKey3.currentState.validate()) {
                      return;
                    }
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Digite o número do cartão',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Divider(),
              Text(
                'Nome do titular: ',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              Form(
                key: formKey2,
                autovalidateMode: AutovalidateMode.disabled,
                child: TextFormField(
                  controller: textController2,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController2',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  onFieldSubmitted: (_) async {
                    if (formKey2.currentState == null ||
                        !formKey2.currentState.validate()) {
                      return;
                    }
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Digite o nome do titular',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Divider(),
              Text(
                'Código de Segurança (CVV):',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              Form(
                key: formKey1,
                autovalidateMode: AutovalidateMode.disabled,
                child: TextFormField(
                  controller: textController3,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController3',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  onFieldSubmitted: (_) async {
                    if (formKey1.currentState == null ||
                        !formKey1.currentState.validate()) {
                      return;
                    }
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Digite o Código de Segurança',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Divider(),
              Text(
                'Data de Vencimento:',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Divider(),
              Form(
                key: formKey4,
                autovalidateMode: AutovalidateMode.disabled,
                child: TextFormField(
                  controller: textController4,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController4',
                    Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
                  onFieldSubmitted: (_) async {
                    if (formKey4.currentState == null ||
                        !formKey4.currentState.validate()) {
                      return;
                    }
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'MM/AA',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Divider(),
              FFButtonWidget(
                onPressed: () async {
                  if (formKey3.currentState == null ||
                      !formKey3.currentState.validate()) {
                    return;
                  }

                  if (formKey2.currentState == null ||
                      !formKey2.currentState.validate()) {
                    return;
                  }

                  if (formKey1.currentState == null ||
                      !formKey1.currentState.validate()) {
                    return;
                  }

                  if (formKey4.currentState == null ||
                      !formKey4.currentState.validate()) {
                    return;
                  }
                },
                text: 'Avançar',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFF003383),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
