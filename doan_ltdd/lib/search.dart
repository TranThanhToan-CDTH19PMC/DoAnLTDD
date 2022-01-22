import 'package:flutter/material.dart';
import 'package:flutter_application_1/diadanh.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tìm Kiếm Địa Danh',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Tìm Kiếm Địa Danh'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tìm Kiếm Địa Danh"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Tìm Kiếm"),
            TextField(
              decoration: InputDecoration(hintText: "Nhập Vào Địa Danh"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  color: Colors.green,
                  child: Text(
                    "Tìm",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            ListTile(
              title: Text('Vịnh Hạ Long'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diadanh()));
              },
            ),
            ListTile(
              title: Text('Cao Bằng'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Bắc Ninh'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Mũi Né'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Cao Lãnh'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Hà Nội'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Đắk lắk'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
