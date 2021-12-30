import 'package:flutter/material.dart';
import 'package:stayfit/screens/ColorScheme.dart';
import 'package:url_launcher/url_launcher.dart';

class orderscreen extends StatefulWidget {
  const orderscreen({Key? key}) : super(key: key);

  @override
  _orderscreenState createState() => _orderscreenState();
}

class _orderscreenState extends State<orderscreen> {
  final url1 = "https://www.swiggy.com";
  final url2 = "https://grofers.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StayFit"),
      ),
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 45),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Order",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Food",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launch(url1);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage("asset/images/orderfood.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: 180,
                            width: 300,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Groceries",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launch(url2);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage("asset/images/order.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: 180,
                            width: 300,
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
    );
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
