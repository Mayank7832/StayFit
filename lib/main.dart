import 'package:flutter/material.dart';
import 'package:stayfit/screens/Homepage.dart';
import 'package:stayfit/screens/Start.dart';
import 'package:stayfit/screens/Discoverscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stayfit/screens/Userscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: Startscreen(),
    );
  }
}

class NavigationBar1 extends StatefulWidget {
  const NavigationBar1({Key? key}) : super(key: key);

  @override
  _NavigationBar1State createState() => _NavigationBar1State();
}

class _NavigationBar1State extends State<NavigationBar1> {
  int _currentindex = 0;
  final tabs = [MyHomePage(), Discoverpage(), Userpage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          selectedFontSize: 2,
          currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: " ",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
