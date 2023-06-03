import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'extra/description_container.dart';
import 'extra/plants_description.dart';
import 'plantdetails_model.dart';

class PlantdetailsWidget extends StatefulWidget {
  PlantdetailsWidget({Key? key}) : super(key: key);

  @override
  State<PlantdetailsWidget> createState() => _PlantdetailsWidgetState();
}

class _PlantdetailsWidgetState extends State<PlantdetailsWidget> {
  int setIndex = 0;

  void onPress(index) {
    setState(() {
      setIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).tertiary400,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 55.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 25.0,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
          child: Text(
            'Plant details',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
              fontFamily: 'Noto Sans',
              color: FlutterFlowTheme.of(context).white,
              fontSize: 25.0,
              useGoogleFonts: GoogleFonts.asMap().containsKey(
                  FlutterFlowTheme.of(context).headlineMediumFamily),
            ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  InkWell(
                    onTap: () => onPress(0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 0 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset('assets/1-carrot-png-image.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(1),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 1 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset(
                          'assets/3-tomato-png-image-picture-download.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(2),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 2 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset(
                          'assets/7-potato-png-images-pictures-download.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(3),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 3 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset('assets/8-onion-png-image.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(4),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 4 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset(
                          'assets/11-cucumber-png-image-picture-download.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(5),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 5 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset(
                          'assets/12-broccoli-png-image-with-transparent-background.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(6),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 6 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset(
                          'assets/14-eggplant-png-images-download.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(7),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 7 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset('assets/23-corn-png-image.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () => onPress(8),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor:
                      setIndex == 8 ? Colors.lightGreenAccent : Colors.white,
                      child: Image.asset(
                          'assets/37-red-chili-pepper-png-image.png'),
                    ),
                  ),
                ],
              ),
            ),
            DescriotionContainer(plantData: plants[setIndex]),
          ],
        ),
      ),
    );
  }
}
