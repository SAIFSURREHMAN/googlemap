import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 36, 128, 39),
        centerTitle: true,
        title: Text(
          'Google Office Locations',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: OpenStreetMapSearchAndPick(
          center: LatLong(23, 89),
          buttonColor: Colors.green,
          buttonText: 'Set Current Location',
          zoomInIcon: Icons.zoom_in_outlined,
          hintText: ('Zoom In'),
          zoomOutIcon: Icons.zoom_out_outlined,
          onPicked: (pickedData) {}),
    );
  }
}
