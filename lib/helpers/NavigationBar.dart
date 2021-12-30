import 'package:flutter/material.dart';
import 'package:stayfit/screens/Homepage.dart';
import 'package:stayfit/screens/Discoverscreen.dart';
import 'package:stayfit/screens/Userscreen.dart';

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
