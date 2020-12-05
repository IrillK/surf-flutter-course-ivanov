import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_screen.dart';

import 'package:places/mocks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SightList(),
    );
  }
}

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ) ,
      home: SightList()
    );
  }

}


class MyFirstWidget extends StatelessWidget{

/*
  Type contextRunType(){
    return context.runtimeType;
  }
*/

  int count = 0;
  @override
  Widget build(BuildContext context){
    print(++count);
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
class MySecondWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MySecondWidgetState();
}
class _MySecondWidgetState extends State<MySecondWidget>{

  Type contextRunType(){
    return context.runtimeType;
  }

  int count = 0;

  @override
  Widget build(BuildContext context) {
    print(++count);
    print(contextRunType());
    return Container(
      child: Center(
        child: Text('Hello'),
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
