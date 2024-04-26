import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";
import "dart:async";
import "package:randomnotrandom/screen/home.dart";


class map extends StatefulWidget{
  const map({Key? key}) : super(key: key);
  @override
  mapState createState() => mapState();
}

class mapState extends State<map>{
  Completer<GoogleMapController> _controller = Completer();
  final CameraPosition pos = CameraPosition(target: LatLng(3.1390, 101.6869), zoom: 10);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.terrain,
            initialCameraPosition: pos,
            onMapCreated: (GoogleMapController controller){
              _controller.complete(controller);
            },
          )
        ],
          )
        
      );
            
       
  }
}