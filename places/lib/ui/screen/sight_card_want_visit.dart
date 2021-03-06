import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen_consts/color_const.dart';
import 'package:places/ui/screen_consts/text_const.dart';
import 'package:places/ui/screen_consts/text_style_const.dart';

//Simple place card for visiting card:want to visit
class SightCardWantVisit extends StatelessWidget {
  const SightCardWantVisit({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: Theme.of(context).textTheme.subtitle1.backgroundColor,
        height: 198,
        child: Column(
          children: [
            _Image(sight: sight),
            _Bottom(sight: sight),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key key, this.sight}) : super(key: key);
  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 96,
          width: double.infinity,
          child: Image.asset(
            sight.url,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          top: 20,
          right: 16,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 20,
              height: 18,
              child: Icon(
                Icons.close,
                color: iconSightCardColor,
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          right: 46,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 20,
              height: 18,
              child: Icon(
                Icons.calendar_today_rounded,
                color: iconSightCardColor,
              ),
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              sight.type,
              style: sightCardImageTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class _Bottom extends StatelessWidget {
  const _Bottom({Key key, this.sight}) : super(key: key);
  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 102,
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 2),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 2,
              ),
              child: Text(
                sight.nameSights,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
          Container(
            height: 28,
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              sightCardWantVisitScheduled,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
              ),
            ),
          ),
          Text(
            sightCardWantVisitClose,
            style: textStyleSightCardWantVisitClose,
          ),
        ],
      ),
    );
  }
}
