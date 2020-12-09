import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen_consts/sight_details_consts.dart';

//Screen with a detailed description of the place

class SightDetails extends StatelessWidget {
  const SightDetails({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildImage(context),
          _buildTitle(context),
          _buildTextSection(context),
          _buildButtons(context),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              sight.nameSights,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: nameSightsDetailsFontSize,
              ),
            ),
          ),
          Text(
            sight.type,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: typeSightsDetailsFontSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 48,
            margin: const EdgeInsets.only(bottom: 24.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.swap_calls,
                    color: buildRouteColorSightDetails,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      buildRouteSightDetails,
                      style: TextStyle(
                        color: buildRouteColorSightDetails,
                        fontSize: buildRouteFontSizeSightDetails,
                      ),
                    ),
                  ),
                ]),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: scheduleSightDetailsColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      scheduleSightDetails,
                      style: TextStyle(
                        fontSize: buttonSightDetailsFontSize,
                        fontWeight: buttonSightDetailsFontWeight,
                        color: scheduleSightDetailsColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_border,
                      color: toFavoritesSightDetailsColor),
                  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      toFavoritesSightDetails,
                      style: TextStyle(
                        fontSize: buttonSightDetailsFontSize,
                        fontWeight: buttonSightDetailsFontWeight,
                        color: toFavoritesSightDetailsColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: Text(
        sight.details,
        softWrap: true,
        style: TextStyle(fontSize: textSightDetailsFontSize),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            sight.url,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 16,
          top: 36,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: arrowSightDetailsBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: arrowSightDetailsColor,
            ),
          ),
        )
      ],
    );
  }
}
