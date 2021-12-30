import 'package:flutter/material.dart';
import 'package:stayfit/screens/ColorScheme.dart';

class Discoverpage extends StatefulWidget {
  const Discoverpage({Key? key}) : super(key: key);

  @override
  _DiscoverpageState createState() => _DiscoverpageState();
}

class _DiscoverpageState extends State<Discoverpage> {
  var titleList = [
    "Abs Workout",
    "Paleo Diet",
    "Vegan Diet",
    "Belly Fat Workout",
    "Hiit Workout",
    "Low Carb Diet"
  ];

  // Description List Here
  var descList = [
    "Push yourself, because no one else is going to do it for you.",
    "Includes lean meats, fish, fruits, vegetables, nuts and seeds",
    "Contains only plants such as vegetables, grains, nuts and fruits.",
    "Make a Commitment.",
    "combines short bursts of intense exercise with periods of rest or lower-intensity exercise.",
    "Useful in short term to lose weight, lower blood pressure, etc."
  ];

  var conttitle = [
    "Try to focus on your breathing",
    "Avoid these foods and ingredients:",
    "Most common vegan foods are: ",
    "The more you sweat, the more calories you burn",
    "Repeat each exercise thrice",
    "Base your diet on real, unprocessed, low-carb foods"
  ];

  var contList = [
    "\n\n10x     situps\n10x     flutter kicks\n10x     count-crunch hold\n10x     situps\n10x     flutter kicks\n10x     count-raised leg hold\n10x     situps\n10x     sitting twists\n10x     count-hollow hold",
    "•	Sugar and high-fructose corn syrup: Softdrinks, fruit juices, table sugar, candy, pastries, ice cream and many others.\n\n•	Grains: Includes breads and pastas, wheat, spelt, rye, barley, etc.\n\n•	Legumes: Beans, lentils and manymored.",
    "•	Whole-food vegan diet: A diet based on a wide variety of whole plant foods such as fruits, vegetables, whole grains, legumes, nuts and seeds.\n\n•	Raw-food vegan diet: A vegan diet based on raw fruits, vegetables, nuts, seeds or plant foods cooked at temperatures below 118°F (48°C) (1Trusted Source).\n\n•	80/10/10: The 80/10/10 diet is a raw-food vegan diet that limits fat-rich plants such as nuts and avocados and relies mainly on raw fruits and soft greens instead. Also referred to as the low-fat, raw-food vegan diet or fruitarian diet.",
    "\n\n8x     Burpees\n30x     Mountain Climber\n30x     Russian twists\n30 sec  plank\n12x     Lying Leg Raises\n24x     Scissor kicks\n8x     Crunches\n8x     Bicycle crunches\n15x     situps",
    "\n\n30 sec  Mountain climber\n30 sec  Lunges\n30 sec  Butt Kicks\n130 sec  Jumping Jacks\n30 sec  Knee Hugs\n30 sec  Plank jacks\n30 sec  Squats\n30 sec  Jump Squats\n30 sec  Burpees",
    "•	Meat: Beef, lamb, pork, chicken and others; grass-fed is best.\n•	Fish: Salmon, trout, haddock and many others; wild-caught fish is best.\n•	Eggs: Omega-3-enriched or pastured eggs are best.\n•	Vegetables: Spinach, broccoli, cauliflower, carrots and many others.\n•	Fruits: Apples, oranges, pears, blueberries, strawberries.\n•	Nuts and seeds: Almonds, walnuts, sunflower seeds, etc.",
  ];

  // Image Name List Here
  var imgList = [
    "asset/images/absworkout.png",
    "asset/images/paleodiet.png",
    "asset/images/vegandiet.png",
    "asset/images/bellyfat.png",
    "asset/images/Hiit.png",
    "asset/images/Lowcarbdiet.png"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text("Discover"),
      ),
      backgroundColor: bgcolor,
      // Main List View With Builder
      body: SafeArea(
        child: Container(
          height: 1000,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 30),
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // This Will Call When User Click On ListView Item
                        showDialogFunc(
                            context,
                            imgList[index],
                            titleList[index],
                            contList[index],
                            conttitle[index]);
                      },

                      // Card Which Holds Layout Of ListView Item
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.asset(
                                imgList[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    titleList[index],
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: width,
                                    child: Text(
                                      descList[index],
                                      maxLines: 3,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// This is a block of Model Dialog
showDialogFunc(context, img, title, desc, subtitle) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 580,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 22, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
