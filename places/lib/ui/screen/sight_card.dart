import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  const SightCard({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: 188,
        child: Column(
          children: [
            _buildImage(context),
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
      height: 92,
      color: Color(0xFFF5F5F5),
      padding: const EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(bottom: 2),
          child: Text(
            sight.nameSights,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF3B3E5B),
            ),
          ),
        ),
        Text(
          'краткое описание',
          style: TextStyle(fontSize: 14, color: Color(0xFF7C7E92)),
        )
      ]),
    );
  }
}
