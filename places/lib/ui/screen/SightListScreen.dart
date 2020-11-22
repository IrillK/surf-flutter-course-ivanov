import 'package:flutter/material.dart';

import '../../mocks.dart';
import 'sight_card.dart';

class SightList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: Container(
          color: Colors.white,
          child: Text(
            "Список \nинтересных мест",
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
            ),
          ),
        ),
        toolbarHeight: 100,
          centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: 300,
                  minWidth: 100,
                  maxWidth: double.infinity,
                ),
                child: SightCard(sight: mocks[0]) ,
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: 50,
                  maxHeight: 300,
                  minWidth: 100,
                  maxWidth: double.infinity,
                ),
                child: SightCard(sight: mocks[1]) ,
              ),
            ],
        ),
      ),
    );
  }

}