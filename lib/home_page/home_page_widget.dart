import '../comprar_ticket1/comprar_ticket1_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../informacoes1/informacoes1_widget.dart';
import '../renovar_ticket_tempo_de_estadia/renovar_ticket_tempo_de_estadia_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF003383),
        automaticallyImplyLeading: false,
        title: Text(
          'Menu',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Informacoes1Widget(),
                    ),
                  );
                },
                text: 'Informações',
                options: FFButtonOptions(
                  width: 210,
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
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              FFButtonWidget(
                onPressed: () {
                  print('BTNMapaMunicipal pressed ...');
                },
                text: 'Mapa Municipal',
                options: FFButtonOptions(
                  width: 210,
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
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ComprarTicket1Widget(),
                    ),
                  );
                },
                text: 'Comprar Ticket',
                options: FFButtonOptions(
                  width: 210,
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
              Divider(),
              Divider(),
              Divider(),
              Divider(),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RenovarTicketTempoDeEstadiaWidget(),
                    ),
                  );
                },
                text: 'Renovar Ticket',
                options: FFButtonOptions(
                  width: 210,
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
