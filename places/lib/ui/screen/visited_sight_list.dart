import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen/sight_card_visited.dart';
import 'package:places/ui/screen_consts/color_const.dart';
import 'package:places/ui/screen_consts/text_const.dart';

//sight list for want visiting screen
class VisitedSightList extends StatelessWidget {
  final List<Sight> sights;

  const VisitedSightList({Key key, this.sights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (sights.isNotEmpty) {
      return _SightList(
        sights: sights,
      );
    } else {
      return _EmptyList();
    }
  }
}

class _SightList extends StatelessWidget {
  final List<Sight> sights;

  const _SightList({Key key, this.sights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < sights.length; i++)
              Container(
                padding: const EdgeInsets.all(16.0),
                child: SightCardVisited(sight: sights[i]),
              )
          ],
        ),
      ),
    );
  }
}

class _EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 156,
        width: 253.5,
        child: Column(
          children: [
            Icon(
              Icons.swap_calls,
              size: 60,
              color: emptySightListColor,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, top: 32),
              child: Text(
                sightCardWantVisitEmpty,
                style: TextStyle(
                  color: emptySightListColor,
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              sightCardVisitedEmptyBottom,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: emptySightListColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
