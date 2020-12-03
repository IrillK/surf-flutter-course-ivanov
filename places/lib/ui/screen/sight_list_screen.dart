import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';

class SightList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white,
          child: Text(
            "Список \nинтересных мест",
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
            ),
          ),
        ),
        toolbarHeight: 100,
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
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
