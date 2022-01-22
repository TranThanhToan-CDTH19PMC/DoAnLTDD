import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/showless_showmore.dart';
import 'package:meta/meta.dart';

import 'diadanh.dart';
import 'main.dart';

class TrangChu extends StatelessWidget {
  TrangChu({Key? key}) : super(key: key);
  final String description =
      "Một thiên đường du lịch, một một chuyến đi đáng đồng tiền, một chỗ giải toả căng thẳng sau những ngày dài làm việc. Vịnh Hạ Long nơi mà bạn nên đi du lịch chỉ là 1 lần.";
  @override
  Widget build(BuildContext context) {
    Widget baiviet = Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: [
          Row(children: [
            Image.asset('../image/nghi.jpg', width: 30, height: 30),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text(
                    "Đoàn Văn Thiện",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
                  ),
                  Text("15 phút trước"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 250),
              child: Row(
                children: [
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
          ]),
          Container(
            child: DescriptionTextWidget(text: description),
          ),
          Image.asset(
            '../image/nghi.jpg',
            width: 400,
            height: 300,
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.sentiment_very_satisfied, color: Colors.yellow),
                    Text("41")
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("36 bình luận  "),
                    Text("6 lượt chia sẻ"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.group)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [baiviet, baiviet, baiviet],
              ),
              Container(child: new Search()),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Text('Menu'),
                ),
                ListTile(
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Security'),
                  onTap: () {
                    /*  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Setting()),
                    );*/
                  },
                ),
                ListTile(
                    title: const Text('Sign Out'),
                    onTap: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
