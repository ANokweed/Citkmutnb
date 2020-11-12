import 'dart:convert';

import 'package:citkmutnb/models/image_diagram.model.dart';
import 'package:citkmutnb/page/show_big_picture.dart';
import 'package:citkmutnb/utility/my_constant.dart';
import 'package:citkmutnb/utility/my_style.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ShoeImageFromDiagram extends StatefulWidget {
  final String nameRoom;
  ShoeImageFromDiagram({Key key, this.nameRoom}) : super(key: key);
  @override
  _ShoeImageFromDiagramState createState() => _ShoeImageFromDiagramState();
}

class _ShoeImageFromDiagramState extends State<ShoeImageFromDiagram> {
  String nameRoom;
  List<ImageDiagramModel> imageDiagramModels = List();
  List<Widget> widgets = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameRoom = widget.nameRoom;
    if (nameRoom == null) {
      nameRoom = '';
    }
    print('nameRoom ==> $nameRoom');

    readApI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameRoom),
      ),
      body: widgets.length == 0
          ? Mystyle().showProgress()
          : GridView.extent(
              maxCrossAxisExtent: 250,
              children: widgets,
            ),
    );
  }

  Future<Null> readApI() async {
    String url =
        '${MyConstant().domain}getDiagramWherenameRoom.php?isAdd=true&nameroom=$nameRoom';
    Response response = await Dio().get(url);
    var result = json.decode(response.data);
    int indexCard = 0;
    for (var map in result) {
      ImageDiagramModel model = ImageDiagramModel.fromJson(map);
      Widget widget = createCard(model, indexCard);
      setState(() {
        imageDiagramModels.add(model);
        widgets.add(widget);
      });
      indexCard++;
    }
  }

  Widget createCard(ImageDiagramModel model, int indexCard) {
    String string = '${MyConstant().domain}image_diagram/${model.imgName}';
    return GestureDetector(
      onTap: () {
        print('you cliek $indexCard');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowBigPicture(
                model: imageDiagramModels[indexCard],
              ),
            ));
      },
      child: Card(
        child: Image.network(string),
      ),
    );
  }
}
