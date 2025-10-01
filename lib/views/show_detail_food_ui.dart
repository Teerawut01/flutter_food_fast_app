import 'package:flutter/material.dart';

class ShowDetailFoodUi extends StatefulWidget {
  const ShowDetailFoodUi({super.key});

  @override
  State<ShowDetailFoodUi> createState() => _ShowDetailFoodUiState();
}

class _ShowDetailFoodUiState extends State<ShowDetailFoodUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนชวนหิว (Detail)',
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
            Icons.arrow_back_ios_new_rounded,
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
                      ),
                      title: Text(
                        '${widget.foodList!.name}',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.phone,
                      ),
                      title: Text(
                        '${widget.foodList!.phone}',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.web_outlined,
                        color: Colors.blue,
                      ),
                      title: Text(
                        '${widget.foodList!.website}',
                      ),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {},
                      leading: Icon(
                        FontAwesomeIcons.mapLocation,
                        color: Colors.amber,
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
