import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:citkmutnb/page/bigpicclass.dart';
import 'package:citkmutnb/utility/my_constant.dart';
import 'package:citkmutnb/utility/my_style.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ShowPicture extends StatefulWidget {
  final String room, branch, category;
  ShowPicture({Key key, this.room, this.branch, this.category})
      : super(key: key);
  @override
  _ShowPictureState createState() => _ShowPictureState();
}

class _ShowPictureState extends State<ShowPicture> {
  String room, branch, category;
  List<Widget> widgets = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    room = widget.room;
    branch = widget.branch;
    category = widget.category;
    print('objvdg == $category');
    readPicture();
  }

  Future<Null> readPicture() async {
    List<String> urls = MyConstant().urlAPIPicture;
    List<String> imgs = MyConstant().nameRoom;
    List<String> categorys = MyConstant().categorys;

    int index = categorys.indexOf(category);
    print('indexxxxxx = $index');
    String url =
        '${MyConstant().domain}${urls[index]}?isAdd=true&room=$room&branch=$branch';
    print('url = $url');
    Response response = await Dio().get(url);
    var result = json.decode(response.data);

    for (var map in result) {
      Widget myWidget = Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
              '${MyConstant().domain}${imgs[index]}${map['img_name']}'),
        ),
      );
      setState(() {
        widgets.add(myWidget);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: widgets.length == 0
          // ? Mystyle().showProgress()
          // : GridView.extent(
          //     maxCrossAxisExtent: 400,
          //     children: widgets,
          //   ),
          ? Center(
              child: CircularProgressIndicator(),
            )
          : buildCarouselSlider(),
    );
  }

  Widget buildCarouselSlider() {
    return CarouselSlider(
      items: widgets,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (context, index) => widgets[index],
    );
  }
}
