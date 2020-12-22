import 'package:flutter/material.dart';
import 'package:places/ui/screen_consts/color_const.dart';
import 'package:places/ui/screen_consts/text_style_const.dart';

import '../CustomTapIndicator.dart';

final lightTheme = ThemeData(
  primarySwatch: Colors.green,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  backgroundColor: lmBackgroundColor,
  textTheme: TextTheme(
    subtitle1: lmSightCardNameTextStyle,
    headline2: lmTitleSightCard,
    headline3: lmUnderTitleSightCard,
    headline4: lmTextSelectionTextStyle,
    headline5: lmToFavoritesSightDetailsTextStyle,
  ),
  appBarTheme: AppBarTheme(
    color: lmAppBarBackgroundColor,
    textTheme: TextTheme(
      headline6: lmMyAppBarTextStyle,
    ),
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: lmTapBarColorVisitScreen,
    indicator: CustomTabIndicator(lmTapBarSelectedColor),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: lmSelectedItemColor,
    unselectedItemColor: lmUnSelectedItemColor,
    backgroundColor: lmBackgroundColor,
  ),
);

final darkTheme = ThemeData(
  primarySwatch: Colors.green,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  backgroundColor: dmBackgroundColor,
  textTheme: TextTheme(
    subtitle1: dmSightCardNameTextStyle,
    headline2: dmTitleSightCard,
    headline3: dmUnderTitleSightCard,
    headline4: dmTextSelectionTextStyle,
    headline5: dmToFavoritesSightDetailsTextStyle,
  ),
  appBarTheme: AppBarTheme(
    color: dmAppBarBackgroundColor,
    textTheme: TextTheme(
      headline6: dmMyAppBarTextStyle,
    ),
  ),
  tabBarTheme: TabBarTheme(
    labelColor: tapBarSelectedColor,
    unselectedLabelColor: dmTapBarColorVisitScreen,
    indicator: CustomTabIndicator(dmTapBarSelectedColor),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: dmSelectedItemColor,
    unselectedItemColor: dmUnSelectedItemColor,
    backgroundColor: dmBackgroundColor,
  ),
);

