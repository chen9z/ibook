import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget{
  String title="";
  bool isShowMenu=false;
  bool isShowSearch=false;
  Title(@required String title)
  {
    this.title=title;
  } @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: new Text("书架"),
      centerTitle: true,
      leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.search), onPressed: searchIntent(context)),
      ],
    );
  }

  searchIntent(BuildContext context) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("搜索图书"),
        ),
      );
    }));
  }

}
