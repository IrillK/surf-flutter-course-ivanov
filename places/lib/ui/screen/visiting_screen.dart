import 'package:flutter/material.dart';
import 'package:places/ui/screen/visited_sight_list.dart';
import 'package:places/ui/screen/visiting_screen_sight_list.dart';
import 'package:places/ui/screen_consts/color_const.dart';
import 'package:places/ui/screen_consts/text_const.dart';
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
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            wantToVisitVisit,
          ),
          centerTitle: true,
          toolbarHeight: 108,
          elevation: 0.0,
          backgroundColor: Theme.of(context).backgroundColor,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(52),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).tabBarTheme.unselectedLabelColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                height: 40,
                child: TabBar(
                  unselectedLabelColor: scheduleSightDetailsColor,
                  tabs: [
                    Tab(
                      text: wantToVisit,
                    ),
                    Tab(
                      text: wantToVisitVisited,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            WantVisitingSightList(
              sights: [mocks[2], mocks[0]],
            ),
            VisitedSightList(
              sights: [mocks[2], mocks[0]],
            ),
          ],
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
          selectedItemColor: lmTapBarSelectedColor,
        ),
      ),
    );
  }
}
