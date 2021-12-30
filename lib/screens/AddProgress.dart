import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stayfit/screens/ColorScheme.dart';
import 'package:firebase_database/firebase_database.dart';

class AddProgress extends StatefulWidget {
  const AddProgress({Key? key}) : super(key: key);

  @override
  _AddProgressState createState() => _AddProgressState();
}

class _AddProgressState extends State<AddProgress> {
  late TextEditingController _calories, _date;
  late DatabaseReference _ref;

  void initState() {
    super.initState();
    _calories = TextEditingController();
    _date = TextEditingController();
    _ref = FirebaseDatabase.instance.ref().child('Progress');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 45, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Add Calories",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            TextFormField(
              controller: _date,
              decoration: InputDecoration(
                hintText: "Enter Date",
                prefixIcon: Icon(Icons.date_range),
                fillColor: Colors.white,
                filled: true,
              ),
              onTap: () async {
                DateTime date = DateTime(1900);
                FocusScope.of(context).requestFocus(new FocusNode());

                date = (await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100)))!;

                _date.text = DateFormat("dd-MM-yyyy").format(date);
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _calories,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Calories",
                prefixIcon: Icon(Icons.blur_circular),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                child: Text(
                  "SAVE",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  saveCalories();
                },
              ),
            )
          ],
        ),
      ),
    ));
  }

  void saveCalories() {
    String date = _date.text;
    String calories = _calories.text;

    Map<String, String> calorie = {
      'date': date,
      'calories': calories,
    };

    _ref.push().set(calorie).then((value) => {
          Navigator.pop(context),
        });
  }
}
