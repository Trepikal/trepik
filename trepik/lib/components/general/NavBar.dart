import "package:flutter/material.dart";

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

void _onItemTapped(int index) {
  print(index);
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: "Treks"),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: "Profile"),
        BottomNavigationBarItem(
            icon: Icon(Icons.edit_location), label: "Location")
      ],
    );
  }
}
