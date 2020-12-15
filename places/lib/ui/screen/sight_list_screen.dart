import 'package:flutter/material.dart';
import 'package:places/ui/screen/my_app_bar.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen_consts/text_const.dart';

//Screen with a list of simple place cards
class SightList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        height: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LinearProgressIndicator(),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: SightCard(sight: mocks[0]),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: SightCard(sight: mocks[1]),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: SightCard(sight: mocks[2]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
          ],
          currentIndex: 1,
          selectedItemColor: tapBarSelectedColor,
      ),
    );
  }
}
