import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teledrop/utils/mapstyle.dart';



class TeleDropScreen extends StatefulWidget {
  @override
  _TeleDropScreenState createState() => _TeleDropScreenState();
}

class _TeleDropScreenState extends State<TeleDropScreen> {
  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;

  void initState() {
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/TeleDropPin.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(8.458481458555664, 124.57946018713373),
          icon: mapMarker,
          infoWindow: InfoWindow(
            title: 'Groud Water',
            snippet: 'Depth: 28m -- CLEAN',
          )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey, 
          ),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                 'assets/appbanner.jpg',
                  fit: BoxFit.contain,
                  height: 32,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 30, 0))
            ],),
          backgroundColor: Colors.white,       
          elevation: 1,  
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(
            target: LatLng(8.456694108823825, 124.58247492838318),
            zoom: 15,
          ),
        ));
  }
}
