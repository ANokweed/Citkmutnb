import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class BigPicClass extends StatefulWidget {
  // final String pathimg;
  // BigPicClass({Key key, this.pathimg}) : super(key: key);
  @override
  _BigPicClassState createState() => _BigPicClassState();
}

class _BigPicClassState extends State<BigPicClass> {
  String pathImg;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   pathImg = widget.pathimg;
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: PhotoView(imageProvider: NetworkImage(pathImg)),
    );
  }
}
