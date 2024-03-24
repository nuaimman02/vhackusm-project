// ignore_for_file: unused_import

import 'package:flutter_application_1/models/debt_solver_model.dart';

import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

export 'package:flutter_application_1/models/debt_solver_model.dart';

class DebtSolverWidget extends StatefulWidget {
  const DebtSolverWidget({super.key});

  @override
  State<DebtSolverWidget> createState() => _DebtSolverWidgetState();
}

class _DebtSolverWidgetState extends State<DebtSolverWidget> {
  late DebtSolverModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DebtSolverModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('MainMenu');
              },
              text: '',
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              options: FFButtonOptions(
                height: 40,
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          title: Text(
            'Debt Solver',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 391,
                height: 126,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Text(
                        'Debt Solver Technique Preference',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: widget,
                    ),
                  ],
                ),
              ),
              Container(
                width: 382,
                height: 614,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100,
                          height: 43,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Text(
                            'Debt Name',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 43,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Text(
                            'Type of Debt',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 43,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Text(
                            'Amount',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 43,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          child: Text(
                            'Suggested Amount',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            'PTPTN',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            'Education',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            '125.00',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            '225.00',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            'Myvi',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            'Car',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            '550.00',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            '550.00',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            'Bungalow',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            'House',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            '900.00',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Color(0xFFB4B9B9),
                          ),
                          child: Text(
                            '900.00',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
