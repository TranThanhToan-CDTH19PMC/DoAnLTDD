import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Diadanh extends StatelessWidget {
  final TextEditingController title = TextEditingController();
  final TextEditingController content = TextEditingController();
  Widget image = Image.asset(
    '../image/vhl-1.jpg',
    width: 600,
    height: 300,
  );

  Widget tieude = ListTile(
    title: Text("Vịnh Hạ Long", textScaleFactor: 2),
  );
  Widget gioithieu = Container(
      padding: EdgeInsets.all(25),
      child: Text('Vịnh Hạ Long được Unesco nhiều lần công nhận là Di Sản Văn Hoá Thế giới' +
          ' với hàng nghìn hòn đảo được làm nên bởi hoá kỳ vĩ và sống động. Vịnh Hạ Long có phong cảnh' +
          ' tuyệt vời nên nơi đây là một điểm du lịch rất hấp dẫn với du khách trong nước và quá quốc tế'));
  Widget Mota = Container(
    padding: EdgeInsets.all(25),
    child: Text(
        'Vịnh Hạ Long nổi bật với hệ thống đảo đá và hang động tuyệt đẹp. Đảo ở Hạ Long có hai dạng là đảo đá vôi và đảo phiến thạch, tập trung ở hai vùng chính là vùng phía đông nam vịnh Bái Tử Long và vùng phía tây nam vịnh Hạ Long. Đây là hình ảnh cổ xưa nhất của địa hình có tuổi kiến tạo địa chất từ 250 – 280 triệu năm, là kết quả của quá trình vận động nâng lên, hạ xuống nhiều lần từ lục địa thành trũng biển. Quá trình Carxto bào mòn, phong hoá gần như hoàn toàn tạo ra một Hạ Long độc nhất vô nhị trên thế giới.' +
            'Hàng trăm đảo đá, mỗi đảo mang một hình dáng khác nhau hết sức sinh động: hòn Đầu Người, hòn Rồng, hòn Lã Vọng, hòn Cánh Buồm, hòn Gà Chọi, hòn Lư Hương… Tiềm ẩn trong lòng các đảo đá ấy là những hang động tuyệt đẹp gắn với nhiều truyền thuyết thần kỳ như động Thiên Cung, hang Đầu Gỗ, hang Sửng Sốt, hang Trinh Nữ, động Tam Cung… Đó thực sự là những lâu đài của tạo hoá giữa chốn trần gian. Từ xưa, Hạ Long đã được đại thi hào dân tộc Nguyễn Trãi mệnh danh là “kỳ quan đất dựng giữa trời cao”.'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vịnh Hạ Long"),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text('Danh Mục'),
          ),
          ListTile(
            title: Text('Các thông tin cơ bản'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => thongtincoban()),
              );
            },
          ),
          ListTile(
            title: Text('Các thông tin địa điểm du lịch'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => diadiemthamquan()),
              );
            },
          ),
          ListTile(
            title: Text('Các thông tin địa điểm dừng chân'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => diadiemdungchan()),
              );
            },
          )
        ],
      )),
      body: Container(
        child: ListView(
          children: [
            image,
            tieude,
            gioithieu,
            Mota,
            const Divider(
              color: Colors.black,
              height: 25,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
            OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => binhluanTrangChu()),
                  );
                },
                child: Text('Bình luận')),
            const Divider(
              color: Colors.black,
              height: 25,
              thickness: 2,
              indent: 5,
              endIndent: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget thongtincoban() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin cơ bản của Vịnh Hạ Long'),
      ),
      body: ListView(
        children: [
          Image.asset('../image/vhl2.jpg', fit: BoxFit.cover),
          Text(
              'Vịnh Hạ Long là một Vịnh thuộc phần bờ tay Vịnh Bắc Bộ khu vực biển Đông Bắc Việt Nam, bao gồm vùng biển đảo của thành phố Hạ Long thuộc tỉnh Quảng Ninh'),
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Vị trí: Quảng Ninh'),
                Text('Tiêu chuẩn: Thiên nhiên vii,viii,...'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget diadiemthamquan() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Các địa điểm tham quan'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
                'Bản đồ du lịch Hạ Long CHI TIẾT các địa điểm nổi tiếng:',
                textScaleFactor: 2),
            subtitle: Text(
                'Bản đồ du lịch Hạ Long sau đây sẽ giới thiệu các địa điểm đến nổi tiếng mà du khách sẽ phải "khóc ròng" nếu chưa có dịp ghé thăm và check-in tại vùng vịnh xinh đẹp này.'),
          ),
          ListTile(
            title: Text('1. Bản đồ du lịch thành phố Hạ Long tổng quan'),
            subtitle: Text(
                'Hạ Long là một thiên đường du lịch hấp dẫn thuộc tỉnh Quảng Ninh, nằm cách Hà Nội khoảng 165km về phía Đông mà cách thành phố Hải Phòng khoảng 70km về hướng Đông Bắc.'),
          ),
          Image.asset(
            '../image/bd.jpg',
            width: 600,
            height: 300,
          ),
          ListTile(
            title: Text('2. Bản đồ du lịch Vịnh Hạ Long'),
            subtitle: Text(
                'Với diện tích lên tới 1.553 km2 cùng hệ thống 1.900 hòn đảo đá vôi lớn nhỏ, được tạo hóa ban cho nhiều hình hài độc đáo, sinh động khác nhau, Vịnh Hạ Long đã được UNESCO 2 lần công nhận là Di sản thiên nhiên thế giới, đồng thời trở thành một trong bảy kỳ quan thiên nhiên thế giới mới được tổ chức New7Wonders tuyên bố.'),
          ),
          Image.asset(
            '../image/db2.jpg',
            width: 600,
            height: 300,
          ),
        ],
      ),
    );
  }

  Widget diadiemdungchan() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Các địa điểm dừng chân'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Những địa điểm dừng chân tại Vịnh Hạ Long",
                textScaleFactor: 2),
            subtitle: Text(
                'Trang này giúp chúng ta biết được các nhà nghỉ, khách sạn, địa điểm dừng chân để ta có 1 chuyến du lịch tốt nhất'),
          ),
          Image.asset('../image/nghi.jpg'),
          ListTile(
            title: Text('1. Khu nghỉ dưỡng Vinpearl Resort & Spa Hạ Long',
                textScaleFactor: 1.5),
            subtitle: Text(
                'Nằm trên bản đồ du lịch Hạ Long, giữa đảo Rều nên thơ và mơ mộng, khu nghỉ dưỡng Vinpearl Resort & Spa Hạ Long là một địa điểm lưu trú được du khách vô cùng ưa chuộng. Khách sạn gây ấn tượng ngay từ cái nhìn đầu tiên với thiết kế nguy nga, tráng lệ theo phong cách hoàng gia, tựa như một lâu đài cổ tích mọc lên giữa biển.'),
          ),
          Image.asset('../image/nghi2.jpg'),
        ],
      ),
    );
  }

  Widget binhluanTrangChu() {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chia sẻ bài viết'),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(alignment: const Alignment(0.6, 0.6), children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('../image/vhl-3.jpg'),
                    radius: 20.0,
                  )
                ]),
                Text('Tôi yêu Hạ Long'),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 100),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(5.0)),
                    ),
                  ),
                ),
              ],
            )));
  }
}
