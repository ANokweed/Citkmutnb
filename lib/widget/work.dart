import 'package:flutter/material.dart';

class Workwork extends StatefulWidget {
  @override
  _WorkworkState createState() => _WorkworkState();
}

class _WorkworkState extends State<Workwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ติดต่อ'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildRow(),showlogo()
            ],
          ),
        ),
      ),
    );
  }

  Container showlogo() => Container(
        width: 500.0,
        height: 500.0,
        child: Image.asset('images/abc.png'),
      );

  Row buildRow() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15),
                color: Colors.orange,
              ),
              width: 370,
              child: ListTile(
                title: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                      'ข้อมูลติดต่อวิทยาลัยเทคโนโลยีอุตสาหกรรม'),
                ),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '   1518 ถนนประชาราษฎร์ 1 แขวงวงศ์สว่าง เขตบางซื่อ กรุงเทพฯ 10800',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                        ),
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(5),
                          child: Text(
                            '   โทร. 02-555-2000',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        );
  }
}
