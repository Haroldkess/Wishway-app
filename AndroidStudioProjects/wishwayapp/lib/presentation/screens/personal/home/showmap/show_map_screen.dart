import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wishwayapp/presentation/screens/personal/home/showmap/mapextra/map_status_card.dart';
import 'package:wishwayapp/presentation/uiproviders/extras_provider.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import '../../../../../services/allNavigation.dart';
import '../../../../constant/color_pallate.dart';
import '../../../../constant/keys.dart';
import '../../../../widget/text.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'dart:async';

class ShowMapScreen extends StatefulWidget {
  const ShowMapScreen({super.key});

  @override
  State<ShowMapScreen> createState() => _ShowMapScreenState();
}

class _ShowMapScreenState extends State<ShowMapScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  PolylinePoints polylinePoints = PolylinePoints();

  //drawn routes on the map
  final Set<Polyline> _polylines = <Polyline>{};
  List<LatLng> polylineCoordinates = [];

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLicationIcon = BitmapDescriptor.defaultMarker;

  // Location
  LocationData? currentLocation;

  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.06600055);
  Location location = Location();

  CameraPosition? initialCameraPosition;

  void initialLocation() async {
    location.getLocation().then(
      (currentLoc) {
        setState(() {
          currentLocation = currentLoc;
        });

        initialCameraPosition = CameraPosition(
          target: LatLng(currentLoc.latitude!, currentLoc.longitude!),
          zoom: 14.5,
          tilt: 59,
          bearing: -70,
        );
        // location.onLocationChanged.listen((LocationData newLoc) async {
        //     currentLocation = newLoc;

        //   final GoogleMapController controller = await _controller.future;
        //   controller.animateCamera(
        //     CameraUpdate.newCameraPosition(
        //       CameraPosition(
        //         target: LatLng(newLoc.latitude!, newLoc.longitude!),
        //         zoom: 14.5,
        //         tilt: 59,
        //         bearing: -70,
        //       ),
        //     ),
        //   );
        //   // setState(() {
        //   //   currentLocation = newLoc;
        //   // });
        // });
      },
    );
  }

  void getPolyPoints() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      google_api_key,
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      optimizeWaypoints: true,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        },
      );
      setState(
        () {
          _polylines.add(
            Polyline(
              startCap: Cap.roundCap,
              endCap: Cap.roundCap,
              jointType: JointType.round,
              geodesic: true,
              polylineId: const PolylineId("line"),
              width: 6,
              color: primaryOrange,
              points: polylineCoordinates,
            ),
          );
        },
      );
    }
  }

  void setSourceAndDestinationIcons() async {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(24, 24)),
            'assets/Pin_source.png')
        .then(
      (value) {
        sourceIcon = value;
      },
    );
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), 'assets/Pin_destination.png')
        .then(
      (value) {
        destinationIcon = value;
      },
    );
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), 'assets/Badge.png')
        .then(
      (value) {
        currentLicationIcon = value;
      },
    );
  }

  @override
  void initState() {
    super.initState();

    initialLocation();
    //  getPolyPoints();
    // setSourceAndDestinationIcons();
  }

  @override
  void dispose() {
    super.dispose();
    // setController();
  }

  void setController() {
    setState(() {
      currentLocation = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    ExtraProvider size = Provider.of(context, listen: false);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  color: backgroundColor,
                  height: MediaQuery.of(context).size.height,
                  child: currentLocation == null
                      ? const Center(
                          child: CupertinoActivityIndicator(
                            color: Colors.white,
                            radius: 15,
                          ),
                        )
                      : GoogleMap(
                          zoomControlsEnabled: true,
                          initialCameraPosition: initialCameraPosition!,
                          polylines: _polylines,
                          mapType: MapType.hybrid,
                          markers: {
                            Marker(
                              markerId: const MarkerId("currentLocation"),
                              icon: currentLicationIcon,
                              position: LatLng(currentLocation!.latitude!,
                                  currentLocation!.longitude!),
                            ),
                            Marker(
                              markerId: const MarkerId("source"),
                              icon: sourceIcon,
                              position: sourceLocation,
                            ),
                            Marker(
                              markerId: const MarkerId("destination"),
                              icon: destinationIcon,
                              position: destination,
                            ),
                          },
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: MapDetails(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 36,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  InkWell(
                      onTap: () => PageRouting.popToPage(context),
                      splashColor: darkCard,
                      highlightColor: darkCard,
                      focusColor: darkCard,
                      child: Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            color: darkCard,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: textLightColor,
                                width: 1,
                                style: BorderStyle.solid)),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icon/leftarrow.svg",
                            height: 14,
                            width: 8,
                            color: textLightColor,
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  AppTextOverPass(
                    text: "Payment Option",
                    fontWeight: FontWeight.w600,
                    size: 16,
                    color: textLightColor,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
