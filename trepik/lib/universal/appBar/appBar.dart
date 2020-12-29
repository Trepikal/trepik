import 'package:flutter/material.dart';

// basically it's gotta have a preferred size widget stuff when extracted away. I have no clue why. 
class TrepikAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.green,
      title: Text(
        'TREPIK',
        style: TextStyle(
          letterSpacing: 2.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
