import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:places/strings.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        color: Colors.white,
        child: Text(
          listOfInterestingPlaces,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
          ),
        ),
      ),
      toolbarHeight: preferredSize.height,
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
