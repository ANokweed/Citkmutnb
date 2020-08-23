import 'package:citkmutnb/utility/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Path extends StatefulWidget {
  @override
  _PathState createState() => _PathState();
}

class _PathState extends State<Path> {
  List<String> builds = ['42', '62', '63', '64', '65', '66', '67', '68', '69'];
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.yellowAccent,
    Colors.black38,
    Colors.amberAccent,
    Colors.lightBlue,
    Colors.purple,
    Colors.orange
  ];
  List<Widget> widgets = List();
  LatLng centerMap = LatLng(13.819177, 100.514284);

  @override
  void initState() {
    super.initState();
    int index = 0;
    for (var string in builds) {
      Widget widget = createCard(string, colors[index]);
      index++;
      setState(() {
        widgets.add(widget);
      });
    }
  }

  Marker build42() {
    LatLng latLng = LatLng(13.819494, 100.516089);
    return Marker(
        markerId: MarkerId('build42'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 42', snippet: 'อธิบายอาคาร42'),
        icon: BitmapDescriptor.defaultMarkerWithHue(60));
  }

  Marker build62() {
    LatLng latLng = LatLng(13.820515, 100.515956);
    return Marker(
        markerId: MarkerId('build62'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 62', snippet: 'อธิบายอาคาร62'),
        icon: BitmapDescriptor.defaultMarkerWithHue(160));
  }

  Marker build63() {
    LatLng latLng = LatLng(13.820524, 100.516545);
    return Marker(
        markerId: MarkerId('build63'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 63', snippet: 'อธิบายอาคาร63'),
        icon: BitmapDescriptor.defaultMarkerWithHue(95));
  }

  Marker build64() {
    LatLng latLng = LatLng(13.820973, 100.515676);
    return Marker(
        markerId: MarkerId('build64'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 64', snippet: 'อธิบายอาคาร64'),
        icon: BitmapDescriptor.defaultMarkerWithHue(12));
  }

  Marker build65() {
    LatLng latLng = LatLng(13.821148, 100.516039);
    return Marker(
        markerId: MarkerId('build42'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 42', snippet: 'อธิบายอาคาร42'),
        icon: BitmapDescriptor.defaultMarkerWithHue(50));
  }

  Marker build66() {
    LatLng latLng = LatLng(13.820964, 100.516241);
    return Marker(
        markerId: MarkerId('build62'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 62', snippet: 'อธิบายอาคาร62'),
        icon: BitmapDescriptor.defaultMarkerWithHue(88));
  }

  Marker build67() {
    LatLng latLng = LatLng(13.820926, 100.516361);
    return Marker(
        markerId: MarkerId('build63'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 63', snippet: 'อธิบายอาคาร63'),
        icon: BitmapDescriptor.defaultMarkerWithHue(51));
  }

  Marker build68() {
    LatLng latLng = LatLng(13.820866, 100.516562);
    return Marker(
        markerId: MarkerId('build62'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 62', snippet: 'อธิบายอาคาร62'),
        icon: BitmapDescriptor.defaultMarkerWithHue(76));
  }

  Marker build69() {
    LatLng latLng = LatLng(13.820848, 100.516812);
    return Marker(
        markerId: MarkerId('build63'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 63', snippet: 'อธิบายอาคาร63'),
        icon: BitmapDescriptor.defaultMarkerWithHue(66));
  }

  Set<Marker> mySet() {
    return <Marker>[
      build42(),
      build62(),
      build63(),
      build64(),
      build65(),
      build66(),
      build67(),
      build68(),
      build69()
    ].toSet();
  }

  Widget createCard(String string, Color color) {
    return Row(
      children: [
        Icon(Icons.location_on, color: color,),
        Text('อาคาร $string'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: centerMap,
                zoom: 16,
              ),
              onMapCreated: (controller) {},
              markers: mySet(),
            ),
          ),
          widgets.length == 0
              ? Mystyle().showProgress()
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        widgets[0],
                        widgets[1],
                        widgets[2],
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        widgets[3],
                        widgets[4],
                        widgets[5],
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        widgets[6],
                        widgets[7],
                        widgets[8],
                      ],
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
