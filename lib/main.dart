import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teledrop/screen/homescreen.dart';
import 'package:teledrop/screen/map_screen.dart';
import 'package:teledrop/screen/parking.dart';
import 'package:teledrop/services/geolocator_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorService = GeolocatorService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => locatorService.getLocation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tele Drop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Homescreen(),
      ),
    );
  }
}

//   return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Tele Drop',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Search(),
//     );
//   }
// }
