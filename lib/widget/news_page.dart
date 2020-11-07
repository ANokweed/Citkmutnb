import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('คำถามที่พบบ่อย'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            one(),
            two(),
            tree(),
            four(),
            figth(),
            six(),
            seven(),
            eigth(),
            nine(),
            ten()
          ],
        ),
      ),
    );
  }

  Row one() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 9.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'วิทยาลัยเทคโนโลยีอุตสาหกรรมกับคณะวิศวกรรมศาสตร์ ต่างกันอย่างไร'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   วิทยาลัยเทคโนโลยีอุตสาหกรรม ภายในภาควิชาจะมีสาขาเฉพาะทางที่สามารถเลือกตรงสายงานได้เลย งานปฏิบัติเยอะ',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   คณะวิศวกรรมศาสตร์ภายในภาควิชา ขอบเขตสายงานจะกว้างเรียนทฤษฎีหนัก',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row two() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange.shade200,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('วิทยาลัยเทคโนโลยีอุตสาหกรรมมีกี่ภาควิชา'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   9 ภาควิชา + 1 โรงเรียน',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row tree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'วิทยาลัยเทคโนโลยีอุตสาหกรรมมีหลักสูตรระดับการศึกษาอะไรบ้าง'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ประกาศนียบัตรวิชาชีพ',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ปริญญาตรี',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ปริญญาโท',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ปริญญาเอก',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row four() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange.shade200,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('วิทยาลัยเทคโนโลยีอุตสาหกรรมมีกี่อาคาร'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   12 อาคาร',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row figth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'กองบริการนักศึกษาของวิทยาลัยเทคโนโลยีอุตสาหกรรมอยู่อาคารอะไรและชั้นไหน'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   อาคาร 63  ชั้น 3',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row six() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange.shade200,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'ห้องประชุมที่ใหญ่ที่สุดของวิทยาลัยเทคโนโลยีอุตสาหกรรมคือห้องประชุมอะไร'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ห้องประชุมเพชราวุธ',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row seven() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child:
                        Text('สัญลักษณ์ของวิทยาลัยเทคโนโลยีอุตสาหกรรมคืออะไร'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   คัตเตอร์',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row eigth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange.shade200,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('เรียนจบปริญญาตรีจากวิทยาลัยเทคโนโลยีอุตสาหกรรมจะได้วุฒิการศึกษาอะไร'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   วุฒิวิศวกรรมศาสตร์บัณฑิต (วศ.บ.)',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row nine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        'วิทยาลัยเทคโนโลยีอุตสาหกรรมมีวุฒิการศึกษาอะไรบ้าง'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ประกาศนียบัตรวิชาชีพ (ปวช.)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   วิศวกรรมศาสตร์บัณฑิต (วศ.บ.)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   อุตสาหกรรมศาสตร์บัณฑิต (อส.บ.)',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   วิศวกรรมศาสตร์มหาบัณฑิต (วศ.ม.)',
                            ),
                          ),
                        ],
                      ),
                     ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row ten() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colors.orange.shade200,
                ),
                width: 370,
                child: ListTile(
                  title: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('ร้านอะไรต่อแถวยาวที่สุดในโรงอาหารอาคาร 65'),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sentiment_very_satisfied,
                          ),
                          Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '   ก๋วยเตี๋ยวร้านเฮียตี๋',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
