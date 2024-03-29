import 'dart:async';
import 'dart:convert';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ardcamera_model.dart';
export 'ardcamera_model.dart';

class ArdcameraWidget extends StatefulWidget {
  const ArdcameraWidget({Key? key}) : super(key: key);

  @override
  _ArdcameraWidgetState createState() => _ArdcameraWidgetState();
}

class _ArdcameraWidgetState extends State<ArdcameraWidget> {
  late ArdcameraModel _model;
  late Timer _timer;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArdcameraModel());

    // Start the timer to refresh every 5 seconds
    _timer = Timer.periodic(Duration(seconds: 10), (Timer timer) {
      // Call the API again to refresh the image
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    // Cancel the timer to avoid memory leaks
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: ArduinoAICall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).tertiary400,
                ),
              ),
            ),
          );
        }
        final ardcameraArduinoAIResponse = snapshot.data!;

        // Remove the prefix before decoding the base64 image
        final base64Image = ArduinoAICall.arduinoAIImage(ardcameraArduinoAIResponse.jsonBody);
        final imageString = base64Image.replaceFirst('data:image/png;base64,', '');
        final decodedImage = base64Decode(imageString);

        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).tertiary400,
              automaticallyImplyLeading: false,
              title: Text(
                'Arduino Camera',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily:
                  FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.memory(
                      decodedImage,
                      width: 361.0,
                      height: 200.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    ArduinoAICall.arduinoAIRes(
                      ardcameraArduinoAIResponse.jsonBody,
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily:
                      FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 20.0,
                      useGoogleFonts: GoogleFonts.asMap()
                          .containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
