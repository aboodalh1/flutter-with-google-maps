import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
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
              cameraTargetBounds: CameraTargetBounds(LatLngBounds(
                  northeast: const LatLng(31.187084851056554, 29.928110526889437),
                  southwest: const LatLng(31.187084851056554, 29.928110526889437))),
              initialCameraPosition: const CameraPosition(target: LatLng(0, 0))),
          Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Change location"),
              )),
        ]),
      ),
    );
  }
}

// world view 0->3
// country view 4->6
//city view 10->12
// street view 13->17
// building view 18->20
// class pointsCounter extends StatefulWidget {
//   @override
//   State<pointsCounter> createState() => _pointsCounterState();
// }

// class _pointsCounterState extends State<pointsCounter> {
//   int teamAPoints = 0;

//   int teamBPoints = 0;

//   void addOnePoint() {
//     print('add one point');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.orange,
//           title: const Text('Points Counter'),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 500,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const Text(
//                         'Team E',
//                         style: TextStyle(
//                           fontSize: 32,
//                         ),
//                       ),
//                       Text(
//                         '$teamAPoints',
//                         style: const TextStyle(
//                           fontSize: 150,
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.all(8),
//                           backgroundColor: Colors.orange,
//                           minimumSize: const Size(150, 50),
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             teamAPoints++;
//                           });
//                           print(teamAPoints);
//                         },
//                         child: const Text(
//                           'Add 1 Point ',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,
//                           minimumSize: const Size(150, 50),
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             teamAPoints += 2;
//                           });
//                         },
//                         child: const Text(
//                           'Add 2 Point',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.orange,
//                           minimumSize: const Size(150, 50),
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             teamAPoints += 3;
//                           });
//                         },
//                         child: const Text(
//                           'Add 3 Point ',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   height: 500,
//                   child: const VerticalDivider(
//                     indent: 50,
//                     endIndent: 50,
//                     color: Colors.grey,
//                     thickness: 1,
//                   ),
//                 ),
//                 Container(
//                   height: 500,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const Text(
//                         'Team B',
//                         style: TextStyle(
//                           fontSize: 32,
//                         ),
//                       ),
//                       Text(
//                         '$teamBPoints',
//                         style: const TextStyle(
//                           fontSize: 150,
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.all(8),
//                           primary: Colors.orange,
//                           minimumSize: const Size(150, 50),
//                         ),
//                         onPressed: () {
//                           setState(() {});
//                           teamBPoints++;
//                         },
//                         child: const Text(
//                           'Add 1 Point ',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.orange,
//                           minimumSize: const Size(150, 50),
//                         ),
//                         onPressed: () {
//                           setState(() {});
//                           teamBPoints += 2;
//                         },
//                         child: const Text(
//                           'Add 2 Point ',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           primary: Colors.orange,
//                           minimumSize: const Size(150, 50),
//                         ),
//                         onPressed: () {
//                           setState(() {
//                             teamBPoints += 3;
//                           });
//                         },
//                         child: const Text(
//                           'Add 3 Point ',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: const EdgeInsets.all(8),
//                 primary: Colors.orange,
//                 minimumSize: const Size(150, 50),
//               ),
//               onPressed: () {
//                 setState(() {
//                   teamAPoints = 0;
//                   teamBPoints = 0;
//                 });
//               },
//               child: const Text(
//                 'Reset',
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
