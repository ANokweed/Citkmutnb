import 'dart:convert';
// import 'dart:html';
import 'dart:io';

import 'package:citkmutnb/models/load_model.dart';
import 'package:citkmutnb/page/show_pdf.dart';
import 'package:citkmutnb/utility/my_constant.dart';
import 'package:dio/dio.dart';
import 'package:file_utils/file_utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowiistDownload extends StatefulWidget {
  final int index;

  ShowiistDownload({Key key, this.index}) : super(key: key);

  @override
  _ShowiistDownloadState createState() => _ShowiistDownloadState();
}

class _ShowiistDownloadState extends State<ShowiistDownload> {
  List<String> fileNames = List();
  int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = widget.index;
    readAllDownload();
  }

  Future<Null> readAllDownload() async {
    String url =
        '${MyConstant().domain}/cit/getAllDownload.php?Category = $index';

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
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          routeToShowPDF(index, context);
        },
        child: Card(
          child: ListTile(
            trailing: IconButton(
              icon: Icon(Icons.file_download),
              onPressed: () {
                print('url ===>>> ${fileNames[index]}');
                lancherToWeb('${fileNames[index]}');
              },
            ),
            leading: Icon(
              Icons.book,
              size: 30,
              color: Colors.orange,
            ),
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
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       IconButton(
                  //         icon: Icon(Icons.chrome_reader_mode),
                  //         onPressed: () => routeToShowPDF(index, context),
                  //       ),
                  //       IconButton(
                  //         icon: Icon(Icons.cloud_download),
                  //         onPressed: () => processDownload(index),
                  //       ),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> lancherToWeb(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {}
  }

  Future download2(Dio dio, String url, String savePath) async {
    try {
      print('showProcess Work');
      Response response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            validateStatus: (status) {
              return status < 500;
            }),
      );
      print(response.headers);
      File file = File(savePath);
      var raf = file.openSync(mode: FileMode.write);
      // response.data is List<int> type
      raf.writeFromSync(response.data);
      await raf.close();
    } catch (e) {
      print(e);
    }
  }

  void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + "%");
    }
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

  // Future<Null> processDownload(int index) async {
  //   showDialog(
  //     context: context,
  //     builder: (context) => SimpleDialog(
  //       title: Text('Process Download'),
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Container(
  //               width: 48,
  //               height: 48,
  //               child: CircularProgressIndicator(),
  //             ),
  //           ],
  //         )
  //       ],
  //     ),
  //   );

  //   String pathDonwload = '/sdcard/download';
  //   String urlDonwload =
  //       '${MyConstant().domain}/cit/file_download/${fileNames[index]}';
  //   print('urlDonwload ===> $urlDonwload');
  //   try {
  //     FileUtils.mkdir([pathDonwload]);
  //     await Dio()
  //         .download(urlDonwload, '$pathDonwload/${fileNames[index]}')
  //         .then(
  //           (value) => Navigator.pop(context),
  //         );
  //   } catch (e) {
  //     print('e processDonwload ===> ${e.toString()}');
  //   }
  // }

}
