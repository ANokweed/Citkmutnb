import 'package:citkmutnb/widget/work.dart';
import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class CalenderPage extends StatefulWidget {
  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  Widget showImage() {
    return Container(width: 350, child: Image.asset('images/work.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คู่มือการใช้งาน'),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.settings_phone),
        //     onPressed: () {
        //        MaterialPageRoute route = MaterialPageRoute(
        //         builder: (context) => Workwork(),
        //       );Navigator.push(context, route);
        //     },
        //   )
        // ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showImage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
