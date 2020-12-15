import 'package:flutter/material.dart';
import 'package:places/ui/screen/visited_sight_list.dart';
import 'package:places/ui/screen/visiting_screen_sight_list.dart';
import 'package:places/ui/screen_consts/color_const.dart';
import 'package:places/ui/screen_consts/text_const.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen_consts/text_style_const.dart';

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
          title: Text(
            wantToVisitVisit,
            style: appBarFavoritesTextStyle,
          ),
          centerTitle: true,
          toolbarHeight: 108,
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(52),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(
                  color: tapBarColorVisitScreen,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                height: 40,
                child: TabBar(
                  indicator: _CustomTabIndicator(),
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
              sights: [],
            ),
            VisitedSightList(
              sights: [],
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
          selectedItemColor: tapBarSelectedColor,
        ),
      ),
    );
  }
}

class _CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback onChanged]) {
    return new _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final _CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    double indicatorHeight = 40;
    final Rect rect = Offset(
            offset.dx, (configuration.size.height / 2) - indicatorHeight / 2) &
        Size(configuration.size.width, indicatorHeight);
    final Paint paint = Paint();
    paint.color = tapBarSelectedColor;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(40.0)), paint);
  }
}
