import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/strings.dart';

class SightCard extends StatelessWidget {
  const SightCard({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          color: Color(0xFFF5F5F5),
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
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 96,
          decoration: BoxDecoration(
            color: Colors.pink,
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.favorite_border, color: Colors.white),
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
                color: Colors.white,
                fontSize: 14,
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
      color: Color(0xFFF5F5F5),
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
                  fontSize: 16,
                  color: Color(0xFF3B3E5B),
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width / 2,
            ),
            child: Text(
              shortDescription,
              style: TextStyle(fontSize: 14, color: Color(0xFF7C7E92)),
            ),
          )
        ],
      ),
    );
  }
}
