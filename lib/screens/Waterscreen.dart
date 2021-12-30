import 'package:flutter/material.dart';
import 'package:stayfit/screens/ColorScheme.dart';

class Waterscreen extends StatelessWidget {
  const Waterscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  "Water",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child:
                      Image(image: AssetImage("asset/images/waterscreen.png")),
                  height: 150,
                  width: 250,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "The recommended amount of water is 3.7 litres/day for men and 2.7 litres/day for women.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  "Benefits",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\n\n1. It lubricates the joints\n2. It forms saliva and mucus\n3. It delivers oxygen throughout the body\n4. It boosts skin health and beauty\n5. It cushions the brain, spinal cord, and other sensitive tissues\n6. It regulates body temperature\n7. The digestive system depends on it\n8. It flushes body waste\n9. It helps maintain blood pressure\n10. The airways need it\n11. It makes minerals and nutrients accessible\n12. It prevents kidney damage\n13. It boosts performance during exercise\n14. Weight loss\n15. It reduces the chance of a hangover",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
