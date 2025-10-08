import 'package:flutter/material.dart';
import 'package:flutter_food_fast_app/models/food_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowDetailFoodUi extends StatefulWidget {
  //ตัวแปรรับข้อมูลที่ส่งมา
  FoodList? foodList;

  //เอาตัวแปรออกมา
  ShowDetailFoodUi({super.key, this.foodList});

  @override
  State<ShowDetailFoodUi> createState() => _ShowDetailFoodUiState();
}

class _ShowDetailFoodUiState extends State<ShowDetailFoodUi> {
  //สร้างฟังก์ชันสําหรับเปิดเว็บ เปิด google map
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  //สร้างฟังก์ชันสําหรับเปิดเบอร์
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนชวนชิม Detail',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            Image.asset(
              'assets/images/${widget.foodList!.image}',
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 70),
            Padding(
              padding: EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        FontAwesomeIcons.shop,
                        color: Colors.orange,
                      ),
                      title: Text(
                        '${widget.foodList!.name}',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {
                        _makePhoneCall(widget.foodList!.phone!);
                      },
                      leading: Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      title: Text(
                        '${widget.foodList!.phone}',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {
                        _launchInBrowser(Uri.parse(widget.foodList!.website!));
                      },
                      leading: Icon(
                        FontAwesomeIcons.link,
                        color: Colors.blue,
                      ),
                      title: Text(
                        '${widget.foodList!.website}',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {
                        _launchInBrowser(Uri.parse(
                          'https://www.google.com/maps/@${widget.foodList!.lat},${widget.foodList!.lng},13z',
                        ));
                      },
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      title: Text(
                        'เปิด MAP นำทาง',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
