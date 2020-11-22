import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget{

  const SightCard({Key key, this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    sight.nameSights,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
                Text(
                  sight.type,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    );

    Widget buttonSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            alignment: Alignment.center,
            constraints: BoxConstraints(
              minHeight: 50,
              minWidth: 250,
              maxWidth: 330,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.swap_calls, color: Colors.white,),
                  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Хочу посетить',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_today, color: Colors.grey),
                Container(
                  margin: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Запланировать',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_border, color: Colors.black),
                  Container(
                    margin: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'В Избранное',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
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

    Widget textSection = Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 15.0),
      child: Text(
        sight.details,
        softWrap: true,
      ),
    );


    return  Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  constraints: BoxConstraints(
                    minHeight: 50,
                    maxHeight: 300,
                    minWidth: 100,
                    maxWidth: double.infinity,
                  ),
                  color: Colors.black,
                ),
                Positioned(
                  left: 20,
                  top: 20,

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                  ),
                )
              ],
            ),
            titleSection,
            textSection,
            buttonSection,
          ],
        ),
    );
  }
}