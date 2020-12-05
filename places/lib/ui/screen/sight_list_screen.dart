import 'package:flutter/material.dart';
import 'package:places/ui/screen/MyAppBar.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';
import 'package:places/strings.dart';

class SightList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(height: 100,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: SightCard(sight: mocks[0]),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: SightCard(sight: mocks[1]),
            ),
          ],
        ),
      ),
    );
  }
}
