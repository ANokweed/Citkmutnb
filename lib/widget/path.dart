import 'package:citkmutnb/utility/my_style.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Path extends StatefulWidget {
  @override
  _PathState createState() => _PathState();
}

class _PathState extends State<Path> {
  List<String> builds = ['42', '62', '63', '64', '65', '66', '67', '68', '69', '90', '91', '97'];
  List<Color> colors = [
    Colors.red,
    Colors.lightGreenAccent.shade400,
    Colors.indigoAccent.shade400,
    Colors.purpleAccent,
    Colors.purple.shade700,
    Colors.amberAccent.shade700,
    Colors.deepPurple.shade900,
    Colors.pinkAccent.shade400,
    Colors.tealAccent.shade400,
    Colors.red,
    Colors.orange.shade800,
    Colors.pinkAccent,
  ];
  List<Widget> widgets = List();
  LatLng centerMap = LatLng(13.821105, 100.514558);

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
        markerId: MarkerId('build 42'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 42'),
        icon: BitmapDescriptor.defaultMarkerWithHue(5));
  }

  Marker build62() {
    LatLng latLng = LatLng(13.820515, 100.515956);
    return Marker(
        markerId: MarkerId('build 62'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 62'),
        icon: BitmapDescriptor.defaultMarkerWithHue(100));
  }

  Marker build63() {
    LatLng latLng = LatLng(13.820524, 100.516545);
    return Marker(
        markerId: MarkerId('build 63'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 63'),
        icon: BitmapDescriptor.defaultMarkerWithHue(200));
  }

  Marker build64() {
    LatLng latLng = LatLng(13.820973, 100.515676);
    return Marker(
        markerId: MarkerId('build 64'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 64'),
        icon: BitmapDescriptor.defaultMarkerWithHue(300));
  }

  Marker build65() {
    LatLng latLng = LatLng(13.821148, 100.516039);
    return Marker(
        markerId: MarkerId('build 65'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 65'),
        icon: BitmapDescriptor.defaultMarkerWithHue(270));
  }

  Marker build66() {
    LatLng latLng = LatLng(13.820964, 100.516241);
    return Marker(
        markerId: MarkerId('build 66'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 66'),
        icon: BitmapDescriptor.defaultMarkerWithHue(40));
  }

  Marker build67() {
    LatLng latLng = LatLng(13.820926, 100.516361);
    return Marker(
        markerId: MarkerId('build 67'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 67'),
        icon: BitmapDescriptor.defaultMarkerWithHue(250));
  }

  Marker build68() {
    LatLng latLng = LatLng(13.820866, 100.516562);
    return Marker(
        markerId: MarkerId('build 68'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 68'),
        icon: BitmapDescriptor.defaultMarkerWithHue(350));
  }

  Marker build69() {
    LatLng latLng = LatLng(13.820848, 100.516812);
    return Marker(
        markerId: MarkerId('build 69'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 69'),
        icon: BitmapDescriptor.defaultMarkerWithHue(170));
  }

  Marker build90() {
    LatLng latLng = LatLng(13.823506, 100.511709);
    return Marker(
        markerId: MarkerId('build 90'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 90'),
        icon: BitmapDescriptor.defaultMarkerWithHue(351));
  }

  Marker build91() {
    LatLng latLng = LatLng(13.823951, 100.511491);
    return Marker(
        markerId: MarkerId('build 91'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 91'),
        icon: BitmapDescriptor.defaultMarkerWithHue(30));
  }

  Marker build97() {
    LatLng latLng = LatLng(13.824419, 100.511790);
    return Marker(
        markerId: MarkerId('build 97'),
        position: latLng,
        infoWindow: InfoWindow(title: 'อาคาร 97'),
        icon: BitmapDescriptor.defaultMarkerWithHue(325));
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
      build69(),
      build90(),
      build91(),
      build97(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        widgets[9],
                        widgets[10],
                        widgets[11],
                      ],
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
