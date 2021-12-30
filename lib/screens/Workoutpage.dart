import 'package:flutter/material.dart';
import 'package:stayfit/screens/ColorScheme.dart';

class MyWorkout extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Classic Workouts"),
      ),
      backgroundColor: bgcolor,
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          side: BorderSide(color: Colors.black, width: 1)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image: AssetImage(
                                    "asset/images/beggworkout.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 165,
                                ),
                              ),
                              ExpansionTile(
                                title: Text(
                                  "Beginner workouts",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                children: [
                                  Text(
                                      "30x     sec jumping jacks\n10x     push ups\n12x     crunches\n10x     sit ups\n10x     diamond push ups\n30x     sec plank\n10x     push ups\n12x     crunches\n10x     sit ups\n10x     diamond push ups\n30x     sec side stretch left\n30x     sec side stretch right")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          side: BorderSide(color: Colors.black, width: 1)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  "asset/images/intworkout.jpg",
                                ),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 165,
                              ),
                              ExpansionTile(
                                title: Text(
                                  "Intermediate workouts",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                children: [
                                  Text(
                                      "30x     sec jumping jacks\n15x     push ups\n12x     crunches\n15     sit ups\n10x     diamond push ups\n10x     V ups\n15x     side lateral raises\n10     jump situps\n30x     sec plank\n15x     push ups\n12     crunches\n15     sit ups\n10x     diamond push ups\n10x     V ups\n15x     side lateral raises\n10x     jump sit ups\n30x     sec side stretch left\n30x     sec side stretch right")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          side: BorderSide(color: Colors.black, width: 1)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage(
                                  "asset/images/advworkout.jpg",
                                ),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 165,
                              ),
                              ExpansionTile(
                                title: Text(
                                  "Advanced workouts",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                children: [
                                  Text(
                                      "30x     sec jumping jacks\n15x     push ups\n12x     crunches\n15     sit ups\n10x     diamond push ups\n10x     V ups\n15x     side lateral raises\n10     jump situps\n30x     sec plank\n15x     push ups\n12     crunches\n15     sit ups\n10x     diamond push ups\n10x     V ups\n15x     side lateral raises\n10x     jump sit ups\n30x     sec side stretch left\n30x     sec side stretch right")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
