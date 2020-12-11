import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen_consts/visiting_screen_consts.dart';
import 'package:places/mocks.dart';

//The screen has two tabs : want to visit and visited places
class VisitingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return VisitingScreenState();
  }
}

class VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(wantToVisitVisit),
          bottom: TabBar(
            tabs: [
              Tab(
                text: wantToVisit,
              ),
              Tab(
                text: visitPlace,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: SightCard(sight: mocks[0]),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
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
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.airplay_rounded),
              title: Text(listOfInterestingPlaces),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text(wantToVisitVisit),
            ),
          ],
          currentIndex: 1,
        ),
      ),
    );
  }
}
