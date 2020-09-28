import 'dart:convert';


import 'package:citkmutnb/page/show_pdf.dart';
import 'package:citkmutnb/utility/my_constant.dart';
import 'package:dio/dio.dart';
import 'package:file_utils/file_utils.dart';
import 'package:flutter/material.dart';

class ShowiistDownload extends StatefulWidget {
  @override
  _ShowiistDownloadState createState() => _ShowiistDownloadState();
}

class _ShowiistDownloadState extends State<ShowiistDownload> {
  List<String> fileNames = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readAllDownload();
  }

  Future<Null> readAllDownload() async {
    String url = '${MyConstant().domain}/cit/getAllDownload.php';
    Response response = await Dio().get(url);
    var result = json.decode(response.data);
    for (var map in result) {
      setState(() {
        fileNames.add(map['file_name']);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('เอกสารการศึกษา'),
        ),
        body: fileNames.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : buildListView());
  }

  ListView buildListView() {
    return ListView.builder(
      itemCount: fileNames.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          // leading: Icon(
          //   Icons.book,
          //   size: 30,
          //   color: Colors.orange,
          // ),
          title: Container(
            margin: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  child: Text(
                    fileNames[index],
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.chrome_reader_mode),
                        onPressed: () => routeToShowPDF(index, context),
                      ),
                      IconButton(
                        icon: Icon(Icons.cloud_download),
                        onPressed: () => processDownload(index),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void routeToShowPDF(int index, BuildContext context) {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => ShowPdf(
        namePDF: fileNames[index],
        catigory: 'file_download',
      ),
    );
    Navigator.push(context, route);
  }

  Future<Null> processDownload(int index) async {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text('Process Download'),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 48,
                height: 48,
                child: CircularProgressIndicator(),
              ),
            ],
          )
        ],
      ),
    );

    String pathDonwload = '/sdcard/download';
    String urlDonwload =
        '${MyConstant().domain}/cit/file_download/${fileNames[index]}';
    print('urlDonwload ===> $urlDonwload');
    try {
      FileUtils.mkdir([pathDonwload]);
      await Dio()
          .download(urlDonwload, '$pathDonwload/${fileNames[index]}')
          .then(
            (value) => Navigator.pop(context),
          );
    } catch (e) {
      print('e processDonwload ===> ${e.toString()}');
    }
  }
}
