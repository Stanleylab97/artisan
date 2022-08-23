import 'dart:async';

import 'package:artisan/widgets/mainappbar.dart';
import 'package:artisan/widgets/map_bottom_pills.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng SOURCE_LOCATION = LatLng(6.3702928,2.3912362);
const LatLng DEST_LOCATION = LatLng(42.744421,-71.1698939);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class MapPage extends StatefulWidget {
  late String name, prenom, metier, photo ;
  late LatLng position;

  MapPage({required this.name, required this.prenom, required this.metier, required this.photo, required this.position});
  


  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;
  late LatLng currentLocation;
  late LatLng destinationLocation;
  bool userBadgeSelected = false;
  late GoogleMapController mapController;

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];


  @override
  void initState() {
    super.initState();

   

    // set up initial locations
    this.setInitialLocation();
  }

  void setSourceAndDestinationMarkerIcons(BuildContext context) async {
    String parentCat = "";

    sourceIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 4.0),
      'assets/images/source_pin_android.png'
    );

    /* destinationIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.0),
      'assets/imgs/destination_pin_${parentCat}${Utils.deviceSuffix(context)}.png'
    ); */
  }

  void setInitialLocation() {
    currentLocation = this.widget.position;

    destinationLocation = LatLng(
      DEST_LOCATION.latitude,
      DEST_LOCATION.longitude
    );
  }

  @override
  Widget build(BuildContext context) {

  /*   CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context, listen: false);
    widget.subCategory = catSelection.selectedSubCategory; */

    this.setSourceAndDestinationMarkerIcons(context);

    CameraPosition initialCameraPosition = CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
      target: this.widget.position
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              myLocationEnabled: true,
              compassEnabled: false,
              tiltGesturesEnabled: false,
              markers: _markers,
              mapType: MapType.normal,
              initialCameraPosition: initialCameraPosition,
              onTap: (LatLng loc) {
                /* setState(() {
                  this.pinPillPosition = PIN_INVISIBLE_POSITION;
                  this.userBadgeSelected = false;
                }); */
              },
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);

                showPinsOnMap();
               controller.animateCamera(CameraUpdate.newLatLngZoom(this.widget.position, 16));

                //setPolylines();
              },
            ),
          ),
        /*   Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: MapUserBadge(
              isSelected: this.userBadgeSelected,
            ),
          ), */
           AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            curve: Curves.elasticIn,
            left: 0,
            right: 0,
            bottom: this.pinPillPosition,
            child: MapBottomPill(name: this.widget.name, prenom:this.widget.prenom, metier:this.widget.metier, position: this.widget.position)
          ), 
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: MainAppBar(
              showProfilePic: false,
            )
          ) 
        ],
      )
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('sourcePin'),
        position: currentLocation,
        icon: sourceIcon,
        infoWindow: InfoWindow(
            title: "Artisan trouvée",
             
        ),
      
        onTap: () {
          setState(() {
            this.userBadgeSelected = true;
          });
        }
      ));

   /*    _markers.add(Marker(
        markerId: MarkerId('destinationPin'),
        position: destinationLocation,
        icon: destinationIcon,
        onTap: () {
          setState(() {
            this.pinPillPosition = PIN_VISIBLE_POSITION;
          });
        }
      )); */
    });
  }

/*   void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "<GOOGLE_MAPS_API_KEY_HERE>",
      PointLatLng(
        currentLocation.latitude,
        currentLocation.longitude
      ),
      PointLatLng(
        destinationLocation.latitude,
        destinationLocation.longitude
      )
    );

    if (result.status == 'OK') {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });

      setState(() {
        _polylines.add(
          Polyline(
            width: 10,
            polylineId: PolylineId('polyLine'),
            color: Color(0xFF08A5CB),
            points: polylineCoordinates
          )
        );
      });
    }
  } */
}
