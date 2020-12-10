import 'package:flutter/material.dart';
import 'package:places/ui/screen/MyAppBar.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';

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
    );
  }
}
