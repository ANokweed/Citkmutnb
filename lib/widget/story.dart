import 'package:citkmutnb/utility/my_style.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(25),
      children: <Widget>[
        Mystyle().showTitle('ปรัชญา'),
        story1(),
        Mystyle().mySizeBox(10),
        story2(),
        Mystyle().mySizeBox(20.0),
        Mystyle().showTitle('ปณิธาน'),
        story3(),
        Mystyle().mySizeBox(10),
        story4(),
        Mystyle().mySizeBox(20.0),
        Mystyle().showTitle('วิสัยทัศน์'),
        story5(),
        Mystyle().mySizeBox(10),
        story6(),
        Mystyle().mySizeBox(20.0),
        Mystyle().showTitle('อัตลักษณ์'),
        story7(),
        Mystyle().mySizeBox(10),
        story8(),
        Mystyle().mySizeBox(20.0),
        Mystyle().showTitle('เอกลักษณ์'),
        story9(),
        Mystyle().mySizeBox(10),
        story10(),
        Mystyle().mySizeBox(20.0),
      ],
    );
  }

  // Text story1() => Text('');
  Text story1() => Text(
      '   ผลิตวิศวกรและนักเทคโนโลยีเฉพาะทางเพื่อพัฒนาอุตสาหกรรมในระดับนานาชาติ');
  Text story2() => Text(
        '   (To Produce Engineers and Technologists Specialized in Specific Fields to Develop the Industries toward International Forum)',
        style: TextStyle(fontWeight: FontWeight.w500),
      );
  Text story3() =>
      Text('   มุ่งมั่นสร้างบัณฑิตเฉพาะทางและนวัตกรที่มีคุณธรรมคู่คุณภาพ');
  Text story4() => Text(
        '   (To Produce Specialized Graduates and Innovators with Ethics and Morality)',
        style: TextStyle(fontWeight: FontWeight.w500),
      );
  Text story5() =>
      Text('   บัณฑิตเฉพาะทางบูรณาการเทคโนโลยีสร้างนวัตกรรมมุ่งสู่สากล');
  Text story6() => Text(
        '   (Specialized Graduates, Integrating Technology. Creating Innovation, Moving towards to International Forum)',
        style: TextStyle(fontWeight: FontWeight.w500),
      );
  Text story7() => Text('   บัณฑิตที่ทักษะดีปฏิบัติเด่นเน้นความรู้เฉพาะทาง');
  Text story8() => Text(
        '   (Graduates with Competent Skills, Outstanding Practices and Specialized Knowledges)',
        style: TextStyle(fontWeight: FontWeight.w500),
      );
  Text story9() => Text('   องค์กรแห่งการสร้างสรรค์ประดิษฐกรรมสู่นวัฒกรรม');
  Text story10() => Text(
        '   (Organization of Creative invention to innovation)',
        style: TextStyle(fontWeight: FontWeight.w500),
      );
}
