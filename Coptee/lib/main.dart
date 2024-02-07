// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wakeybus  Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Wakeybus Demo - Stop list implementation'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          MapSample(),
          Penal(),
          SearchBarApp(),
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
  bool switchValue1 = true;
  bool switchValue2 = true;
  bool switchValue3 = true;
  bool switchValue4 = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(1, -0.5),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
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
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 4),
                        child: Icon(
                          Icons.alarm_add,
                          color: Color(0x9A000000),
                          size: 40,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                        child: Icon(
                          Icons.add_chart,
                          color: Color(0x9A000000),
                          size: 40,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 8),
                        child: Icon(
                          Icons.pin_drop,
                          color: Color(0x9A000000),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //code for this Column Widget...
          Align(
            alignment: AlignmentDirectional(0,1),
            child: Container(
              alignment: const AlignmentDirectional(0,-1),
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
                              setState(() =>  switchValue1 = newValue);
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
        ],
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

  static const CameraPosition _kLake = CameraPosition(
      target: LatLng(13.794459134438567,
          100.32474017883462), //ICT 13.794459134438567, 100.32474017883462
      zoom: 19.151926040649414);

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
    )
        );
  }
}

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            Colors.transparent, // Set background color to transparent
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchAnchor(
            builder: (BuildContext context, SearchController controller) {
              return SearchBar(
                  controller: controller,
                  padding: const MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0)),
                  onTap: () {
                    controller.openView();
                  },
                  onChanged: (_) {
                    controller.openView();
                  },
                  leading: const Icon(Icons.search));
            },
            suggestionsBuilder:
                (BuildContext context, SearchController controller) {
              return List<ListTile>.generate(5, (int index) {
                final String item = 'item $index';
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  },
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
