import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/screen_consts/sight_card_consts.dart';


//Simple place card

class SightCard extends StatelessWidget {
  const SightCard({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: sightCardBackgroundColor,
        height: 188,
        child: Column(
          children: [
            _buildImage(context),
            SizedBox(
              height: 16,
              width: double.infinity,
            ),
            _buildBottom(context),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 96,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            sight.url,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 20,
              height: 18,
              child: Image.asset(
                favoriteBorder,
                color: Colors.white,
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
              style: TextStyle(
                color: typeSightCardColor,
                fontSize: typeSightCardFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76,
      color: sightCardBackgroundColor,
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
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
                style: TextStyle(
                  fontSize: nameSightsCardFontSize,
                  color: nameSightsCardColor,
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width / 2,
            ),
            child: Text(
              shortDescriptionSightCard,
              style: TextStyle(
                fontSize: shortDescriptionSightCardFontSize,
                color: shortDescriptionSightCardColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
