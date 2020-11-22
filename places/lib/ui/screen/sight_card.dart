import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {

  const SightCard({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Container(

      constraints: BoxConstraints(
        maxWidth: double.infinity,
        maxHeight: 300,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: 150,
                  minWidth: 100,
                  maxWidth: double.infinity,
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child:  Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite_border,color: Colors.white),

                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            constraints: BoxConstraints(
              minHeight: 150,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
            ),
            padding: const EdgeInsets.all(20.0),
            child: Text(
              sight.nameSights,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
          ),
      ],
      ),
    );
  }


}