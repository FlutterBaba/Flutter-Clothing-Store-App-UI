import 'package:clothing_store_app_ui/home.dart';
import 'package:flutter/material.dart';

class Botton extends StatefulWidget {
  const Botton({Key? key}) : super(key: key);

  @override
  _BottonState createState() => _BottonState();
}

class _BottonState extends State<Botton> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      "second Page",
      style: optionStyle,
    ),
    Text(
      "third Page",
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 0,
                blurRadius: 10.0,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              elevation: 0.0,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outline,
                    size: 30.0,
                  ),
                  label: "person_outline",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    size: 30.0,
                  ),
                  label: "home_filled",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.grid_view,
                    size: 30.0,
                  ),
                  label: "grid_view",
                ),
              ],
              currentIndex: _selectedIndex,
              unselectedItemColor: Color(0xffd0cedb),
              selectedItemColor: Color(0xff7a6fb3),
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
