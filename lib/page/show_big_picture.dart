import 'package:citkmutnb/models/image_diagram.model.dart';
import 'package:citkmutnb/utility/my_constant.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ShowBigPicture extends StatefulWidget {
  final ImageDiagramModel model;
  ShowBigPicture({Key key, this.model}) : super(key: key);
  @override
  _ShowBigPictureState createState() => _ShowBigPictureState();
}

class _ShowBigPictureState extends State<ShowBigPicture> {
  ImageDiagramModel model;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.model;
    print('path ===> ${model.imgName}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.nameroom),
      ),
      body: PhotoView(imageProvider: NetworkImage('${MyConstant().domain}image_diagram/${model.imgName}'))
      // Center(
      //   child: Image.network(
      //     '${MyConstant().domain}/cit/image_diagram/${model.imgName}')
      // ),
    );
  }
}
