import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Set<Polyline> polyline = {};

  late GoogleMapController _controller;
  List<LatLng> routeCoords = [
    LatLng(33.8160897, -117.9225226),
    LatLng(33.8160679, -117.9225314),
    LatLng(33.8155824, -117.9235917),
    LatLng(33.816278, -117.9242395),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      onMapCreated: onMapCreated,
      polylines: polyline,
      initialCameraPosition:
          CameraPosition(target: LatLng(33.8160897, -117.9225226), zoom: 17.0),
      mapType: MapType.normal,
      cameraTargetBounds: CameraTargetBounds(
        LatLngBounds(
          northeast: LatLng(34.1358593, -117.922066),
          southwest: LatLng(33.81558589999999, -118.3516705),
        ),
      ),
    ));
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _controller = controller;

      polyline.add(Polyline(
          polylineId: PolylineId('route1'),
          visible: true,
          points: routeCoords,
          width: 10,
          color: Colors.blue,
          startCap: Cap.roundCap,
          endCap: Cap.buttCap));
    });
  }
}
