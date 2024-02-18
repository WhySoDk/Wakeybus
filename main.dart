// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is th0 root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wakeybus Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:
          const MyHomePage(title: 'Wakeybus Demo - search bar implementation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          MapSample(),
          Penal(),
        ],
      ),
    );
  }
}

class Penal extends StatefulWidget {
  const Penal({super.key});

  @override
  State<Penal> createState() => _Penal();
}

class _Penal extends State<Penal> {
  Color _iconButtonColor1 = Colors.black;
  Color _iconButtonColor2 = Colors.black;
  Color _iconButtonColor3 = Colors.black;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
        child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(1, -0.5),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
              child: Container(
                width: 60,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Color(0x33000000),
                      offset: Offset(4, 4),
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(50),
                ), child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          IconButton(
                            icon: const Icon(Icons.add_alarm),
                            color: _iconButtonColor1,
                            onPressed: () {
                              setState(() {
                                _iconButtonColor1 = _iconButtonColor1 == Colors.black ? Colors.orange : Colors.black;
                                _iconButtonColor2 = Colors.black;
                                _iconButtonColor3 = Colors.black;
                              });
                            },
                        ),
                          IconButton(
                            icon: const Icon(Icons.add_chart),
                            color: _iconButtonColor2,
                            onPressed: () {
                              setState(() {
                                _iconButtonColor2 = _iconButtonColor2 == Colors.black ? Colors.orange : Colors.black;
                                _iconButtonColor1 = Colors.black;
                                _iconButtonColor3 = Colors.black;
                              });
                            },
                        ),
                          IconButton(
                            icon: const Icon(Icons.history),
                            color: _iconButtonColor3,
                            onPressed: () {
                              setState(() {
                                _iconButtonColor3 = _iconButtonColor3 == Colors.black ? Colors.orange : Colors.black;
                                _iconButtonColor1 = Colors.black;
                                _iconButtonColor2 = Colors.black;
                              });
                            },
                        ),
                    ],
                  ),
              ),
            ),
          ),
          ]
        )
    );
  }
}


class ListOfStop extends StatefulWidget {
  const ListOfStop({super.key});

  @override
  State<ListOfStop> createState() => _ListOfStopState();
}

class _ListOfStopState extends State<ListOfStop> {
  bool switchValue1 = true;
  bool switchValue2 = true;
  bool switchValue3 = true;
  bool switchValue4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Container(
          alignment: const AlignmentDirectional(0, -1),
          width: 350,
          height: 333,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                color: Color(0x33000000),
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          //padding: EdgeInsetsDirectional.fromSTEB(0,0, 0, 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Align(
                alignment: AlignmentDirectional(0, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                  child: Text(
                    'Stop list',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Icon(
                        Icons.signpost_rounded,
                        color: Color(0xFF57636C),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Mahidol, Salaya.',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                      child: Switch.adaptive(
                        value: switchValue1,
                        onChanged: (newValue) async {
                          setState(() => switchValue1 = newValue);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Color(0xFFB4D4FF),
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 300,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Icon(
                        Icons.signpost_rounded,
                        color: Color(0xFF57636C),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Mahidol, Salaya.',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                      child: Switch.adaptive(
                        value: switchValue2,
                        onChanged: (newValue) async {
                          setState(() => switchValue2 = newValue);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Color(0xFFB4D4FF),
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 300,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Icon(
                        Icons.signpost_rounded,
                        color: Color(0xFF57636C),
                        size: 24,
                      ),
                    ),
                    const Text(
                      'Mahidol, Salaya.',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                      child: Switch.adaptive(
                        value: switchValue3,
                        onChanged: (newValue) async {
                          setState(() => switchValue3 = newValue);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Color(0xFFB4D4FF),
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 300,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Icon(
                        Icons.signpost_rounded,
                        color: Color(0xFF57636C),
                        size: 24,
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Text(
                        'Mahidol, Salaya.',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 24, 0),
                      child: Switch.adaptive(
                        value: switchValue4,
                        onChanged: (newValue) async {
                          setState(() => switchValue4 = newValue);
                        },
                        activeColor: Colors.white,
                        activeTrackColor: Color(0xFFB4D4FF),
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.white,
                      ),
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

class MapSample extends StatefulWidget {
  const MapSample({super.key});
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(13.79461971481865,
        100.32576952102082), //Mahidol 13.79461971481865, 100.32576952102082
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        // Generated code for this side_nav_09 Widget...
        //side nav a component.
      ],
    ));
  }
}
