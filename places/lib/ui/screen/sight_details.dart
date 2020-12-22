import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen_consts/color_const.dart';
import 'package:places/ui/screen_consts/text_const.dart';
import 'package:places/ui/screen_consts/text_style_const.dart';

//Screen with a detailed description of the place
class SightDetails extends StatelessWidget {
  const SightDetails({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          _Image(sight: sight),
          _Title(sight: sight),
          _TextSection(sight: sight),
          _Buttons(),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key key, this.sight}) : super(key: key);
  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              sight.nameSights,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Text(
            sight.type,
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonTheme(
            height: 48,
            minWidth: double.infinity,
            child: RaisedButton.icon(
              label: Text(
                buildRouteSightDetails,
                style: buildRouteColorSightDetailsTextStyle,
              ),
              icon: Icon(
                Icons.swap_calls,
                color: buildRouteColorSightDetails,
              ),
              elevation: 0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              onPressed: () {
                print("Нажали на построить маршрут");
              },
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton.icon(
                icon: Icon(
                  Icons.calendar_today,
                  color: scheduleSightDetailsColor,
                ),
                label: Text(
                  scheduleSightDetails,
                  style: buttonSightDetailsTextStyle,
                ),
                color: Theme.of(context).backgroundColor,
                elevation: 0,
                onPressed: () {
                  print("Нажали на запланировать");
                },
              ),
              RaisedButton.icon(
                icon: Icon(
                  Icons.favorite_border,
                  color: Theme.of(context).textTheme.subtitle1.color,
                ),
                label: Text(
                  toFavoritesSightDetails,
                  style: Theme.of(context).textTheme.headline5,
                ),
                color: Theme.of(context).backgroundColor,
                elevation: 0,
                onPressed: () {
                  print("Нажали на в избранное");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TextSection extends StatelessWidget {
  const _TextSection({Key key, this.sight}) : super(key: key);
  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Text(
        sight.details,
        softWrap: true,
        style: Theme.of(context).textTheme.headline4,
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
          height: 360,
          width: double.infinity,
          child: Image.asset(
            sight.url,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 16,
          top: 36,
          child: SizedBox(
            height: 32,
            width: 32,
            child: RaisedButton(
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).textTheme.subtitle1.color,
              ),
              elevation: 0,
              color: Theme.of(context).backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              onPressed: () {
                print("Вы нажали на стрелочку");
              },
            ),
          ),
        ),
      ],
    );
  }
}
