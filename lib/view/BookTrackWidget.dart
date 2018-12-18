import 'package:flutter/material.dart';

class BookTrackWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BookTrackState();
  }
}

class BookTrackState extends State<BookTrackWidget> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("书架"),
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: searchIntent),
        ],
      ),
      body: new Center(child: new Text("书架"),),
    );
  }
  void searchIntent() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("搜索图书"),
        ),
      );
    }));
}

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;}
