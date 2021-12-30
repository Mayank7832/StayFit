import 'package:flutter/material.dart';
import 'package:stayfit/screens/ColorScheme.dart';
import 'package:url_launcher/url_launcher.dart';

class dietpage extends StatefulWidget {
  const dietpage({Key? key}) : super(key: key);

  @override
  _dietpageState createState() => _dietpageState();
}

class _dietpageState extends State<dietpage> {
  @override
  Widget build(BuildContext context) {
    final url1 =
        "https://www.delicious.com.au/recipes/collections/gallery/60-healthy-dinners-you-can-cook-in-30-minutes/1vo4q819";
    final url2 =
        "https://www.medicinenet.com/what_is_the_healthiest_drink_besides_water/article.htm";
    return Scaffold(
      appBar: AppBar(
        title: Text("Diet plans"),
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
                      "70% of your health depends upon your diet",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Healthy Dinner Recipes",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
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
                          "Healthy Drinks",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
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
                                image: AssetImage(
                                    "asset/images/healthydrinks.png"),
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
