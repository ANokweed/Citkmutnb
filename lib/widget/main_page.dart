import 'package:citkmutnb/page/history.dart';
import 'package:citkmutnb/page/myboss.dart';
import 'package:citkmutnb/page/mycontent.dart';
import 'package:citkmutnb/page/person.dart';
import 'package:citkmutnb/page/service.dart';
import 'package:citkmutnb/utility/my_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:citkmutnb/widget/work.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เมนูหลัก'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings_phone),
            onPressed: () {
               MaterialPageRoute route = MaterialPageRoute(
                builder: (context) => Workwork(),
              );Navigator.push(context, route);
            },
          )
        ],
      ),
      body: buildStack(),
    );
  }

  Stack buildStack() {
    return Stack(
      children: <Widget>[
        Mystyle().myBG(),
        Column(
          children: <Widget>[
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item1', 'ประวัติ', History(), true, ''),
                createItem('item2', 'คณะผู้บริหาร', Myboss(), true, ''),
                createItem('item3', 'หลักสูตร', Mycontent(), true, ''),
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                createItem('item4', 'บริการวิชาการ', Service(), true, ''),
                createItem('item5', 'หน่วยงานวิจัย', History(), false,
                    'http://research.cit.kmutnb.ac.th/cit/web/index.php?r=page%2Findex'),
                createItem('item6', 'ประเมินการสอน', History(), false,
                    'https://grade.icit.kmutnb.ac.th/'),
              ],
            ),
            mySizebox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                createItem('item7', 'ตารางการเรียนการสอน', History(), false,
                    'http://klogic.kmutnb.ac.th:8080/kris/tess/dataQuery.jsp'),
              ],
            )
          ],
        ),
      ],
    );
  }

  SizedBox mySizebox() {
    return SizedBox(
      height: 40,
    );
  }

  //เมธอดที่ทำหน้าที่ ย้ายการทำงานไปหน้า ที่เราคลิกไอเทม
  Widget createItem(String nameImage, String name, Widget widget, bool status,
          String url) =>
      GestureDetector(
        onTap: () {
          if (status) {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (context) => widget,
            );
            Navigator.push(context, route);
          } else {
            launchMyUrl(url);
          }
        },
        child: Column(
          children: [
            Image.asset(
              'images/$nameImage.png',
              width: 66,
              height: 66,
            ),
            Text('$name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                )),
          ],
        ),
      );

  Future<Null> launchMyUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
