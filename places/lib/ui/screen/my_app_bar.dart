import 'package:flutter/material.dart';

import 'package:places/ui/screen_consts/text_const.dart';

//App Bar for the screen with a list of cards
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
        child: Text(
          listOfInterestingPlaces,
        ),
      ),
      toolbarHeight: preferredSize.height,
      centerTitle: false,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
