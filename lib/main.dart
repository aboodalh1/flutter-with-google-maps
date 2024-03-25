// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late CameraPosition initialCameraPosition;
  @override
  void initState() {
    initialCameraPosition = const CameraPosition(
        zoom: 10, target: LatLng(31.187084851056554, 29.928110526889437));
    super.initState();
  }

  @override
  void dispose() {
    googleMapController.dispose();
    super.dispose();
  }

  late GoogleMapController googleMapController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          backgroundColor: Colors.pink[200],
          title: const ListTile(
            title: Text(
              "سفريات العبود",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("جديدنا! سافر مع كلبك"),
          ),
        ),
        body: Stack(children: [
          GoogleMap(
              onMapCreated: (controller) {
                googleMapController = controller;
              },
              cameraTargetBounds: CameraTargetBounds(LatLngBounds(
                  northeast:
                      const LatLng(31.187084851056554, 29.928110526889437),
                  southwest:
                      const LatLng(31.187084851056554, 29.928110526889437))),
              initialCameraPosition:
                  const CameraPosition(target: LatLng(0, 0))),
          Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ElevatedButton(
                onPressed: () {
                  CameraPosition newLocation = CameraPosition(
                      target: LatLng(30.623356317604505, 30.1907021087604),
                      zoom: 12);
                  googleMapController.animateCamera(
                      CameraUpdate.newCameraPosition(newLocation));
                },
                child: const Text("Change location"),
              )),
        ]),
      ),
    );
  }
}

// world view 0->3
// country view 4->6
// city view 10->12
// street view 13->17
// building view 18->20
