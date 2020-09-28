import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class BigBoss extends StatefulWidget {
  final String pathimage;
  BigBoss({Key key, this.pathimage}) : super(key: key);
  @override
  _BigBossState createState() => _BigBossState();
}

class _BigBossState extends State<BigBoss> {
  String pathImage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pathImage = widget.pathimage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhotoView(imageProvider: AssetImage(pathImage)),
    );
  }
}
