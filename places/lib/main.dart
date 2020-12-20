import 'package:flutter/material.dart';
import 'package:places/ui/screen/res/themes.dart';

import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  var isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDarkMode ? darkTheme : lightTheme,
      home: (SightList()),
    );
  }
}
