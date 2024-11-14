import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_mood_model.dart';
export 'icon_mood_model.dart';

class IconMoodWidget extends StatefulWidget {
  const IconMoodWidget({super.key});

  @override
  State<IconMoodWidget> createState() => _IconMoodWidgetState();
}

class _IconMoodWidgetState extends State<IconMoodWidget> {
  late IconMoodModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconMoodModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 0.0, 0.0),
            child: Text(
              'How is your mood?',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Inter Tight',
                    color: Colors.black,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 0.0, 0.0),
            child: Text(
              'On a scale of 1 - 3 how are you feeling today?',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: 'Inter',
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 34.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/6637/6637186.png',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/6637/6637207.png',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/6637/6637168.png',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 30.0, 0.0),
            child: Slider(
              activeColor: FlutterFlowTheme.of(context).primary,
              inactiveColor: FlutterFlowTheme.of(context).alternate,
              min: 0.0,
              max: 3.0,
              value: _model.sliderValue ??= 1.5,
              divisions: 2,
              onChanged: (newValue) {
                safeSetState(() => _model.sliderValue = newValue);
              },
            ),
          ),
        ],
      ),
    );
  }
}
