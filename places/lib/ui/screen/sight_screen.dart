import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SightScreen extends StatefulWidget{

  SightScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _SightScreenState();

}

class _SightScreenState extends State<SightScreen>{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title,
          style: TextStyle(
            fontSize: 22,
          ),
          ),
        ),
      )
    );

  }

}