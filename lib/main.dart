import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new Music(),
      title: "Music",
      routes: <String, WidgetBuilder>{
        '/Music': (BuildContext context) => new Music(),
        '/Speaker': (BuildContext context) => new Speaker(),
      },
    ));

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Music"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.headset, size: 50.0),
          onPressed: () {
            Navigator.pushNamed(context, '/Speaker');
          },
        ),
      ),
    );
  }
}

class Speaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Speaker"),
      ),
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Music');
          },
        ),
      ),
    );
  }
}
