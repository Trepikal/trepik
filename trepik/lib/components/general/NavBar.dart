import "package:flutter/material.dart";

class NavBar extends StatefulWidget {
  final int startingIndex;
  const NavBar ({ Key key, this.startingIndex }): super(key: key);
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  // takes an index and navigates to the appropriate page element for navigation.
  void _onItemTapped(int index) {
    if (index == 0)
      Navigator.pushNamed(context, '/home');
    else if (index == 1)
      Navigator.pushNamed(context, '/treks');
    else if (index == 2)
      Navigator.pushNamed(context, '/profile');
    else
      Navigator.pushNamed(context, '/location');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.green[600],
      type: BottomNavigationBarType.fixed,
      onTap: _onItemTapped,
      currentIndex: widget.startingIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Treks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.edit_location),
          label: 'Location',
        ),
      ],
    );
  }
}
