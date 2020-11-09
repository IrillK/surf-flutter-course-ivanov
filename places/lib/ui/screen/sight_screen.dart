import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SightScreen extends StatefulWidget {
  SightScreen({Key key, this.firstPartTitle, this.secondPartTitle})
      : super(key: key);

  final String firstPartTitle;
  final String secondPartTitle;

  @override
  State<StatefulWidget> createState() => _SightScreenState();
}

class _SightScreenState extends State<SightScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
          appBar: AppBar(
            title: RichText(
              text: TextSpan(
                text: widget.firstPartTitle,
                style: TextStyle(
                  fontSize: 22,
                  wordSpacing: 2,
                ),
                children: [
                  TextSpan(
                    text: widget.secondPartTitle,
                    style: TextStyle(
                      color: Colors.red,
                      )
                  ),
                ]
              ),
            )
          ),
        )
    );
  }
}
