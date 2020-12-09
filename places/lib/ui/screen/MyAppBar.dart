import 'package:flutter/material.dart';
import 'package:places/ui/screen_consts/my_app_bar_consts.dart';


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
          style: TextStyle(
            color: appBarTextColor,
            fontSize: appBarFontSize,
          ),
        ),
      ),
      toolbarHeight: preferredSize.height,
      centerTitle: false,
      elevation: 0,
      backgroundColor: appBarBackgroundColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
