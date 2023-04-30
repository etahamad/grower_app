import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'arduino_model.dart';
export 'arduino_model.dart';

class ArduinoWidget extends StatefulWidget {
  const ArduinoWidget({Key? key}) : super(key: key);

  @override
  _ArduinoWidgetState createState() => _ArduinoWidgetState();
}

class _ArduinoWidgetState extends State<ArduinoWidget> {
  late ArduinoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArduinoModel());
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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Color(0xFF008037),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFFA8CF45),
                              size: 30.0,
                            ),
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'MyProfile'),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineMediumFamily,
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Arduino',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                color: Colors.white,
                                fontSize: 22.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2.0,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 376.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          110.0, 30.0, 100.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          (_model != null && _model.listplantinfo != null)
                              ? (ListPlantInfoCall.listplantinfoRequestID(
                            _model.listplantinfo?.jsonBody,
                          ) as List)
                              .map<String>((s) => s.toString())
                              .toList()
                              .last
                              .toString()
                              : '0',
                          '0',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Gamja Flower',
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 376.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(110.0, 30.0, 100.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      (_model != null && _model.listplantinfo != null)
                          ? (ListPlantInfoCall.listplantinfoMoisture(
                        _model.listplantinfo?.jsonBody,
                      ) as List)
                          .map<String>((s) => s.toString())
                          .toList()
                          .last
                          .toString()
                          : '0',
                      '0',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Gamja Flower',
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(110.0, 30.0, 100.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    (_model != null && _model.listplantinfo != null)
                        ? (ListPlantInfoCall.listplantinfoHumidity(
                      _model.listplantinfo?.jsonBody,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList()
                        .last
                        .toString()
                        : '0',
                    '0',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Gamja Flower',
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(110.0, 30.0, 100.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    (_model != null && _model.listplantinfo != null)
                        ? (ListPlantInfoCall.listplantinfoTemp(
                      _model.listplantinfo?.jsonBody,
                    ) as List)
                        .map<String>((s) => s.toString())
                        .toList()
                        .last
                        .toString()
                        : '0',
                    '0',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Gamja Flower',
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Container(
                width: 376.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(110.0, 30.0, 100.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      (_model != null && _model.listplantinfo != null)
                          ? (ListPlantInfoCall.listplantinfoDateTime(
                        _model.listplantinfo?.jsonBody,
                      ) as List)
                          .map<String>((s) => s.toString())
                          .toList()
                          .last
                          .toString()
                          : '0',
                      '0',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Gamja Flower',
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  _model.listplantinfo = await ListPlantInfoCall.call();

                  setState(() {});
                },
                text: 'Upload',
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF008037),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Gamja Flower',
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Container(
                width: 376.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
