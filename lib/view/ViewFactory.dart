import 'package:flutter/material.dart';

class ViewFactory {
  static AppBar createAppBar(BuildContext context, String title,
      {bool isShowMenu, bool isShowSearch}) {
    return new AppBar(
      title: new Text(title),
      centerTitle: true,
      leading: isShowMenu!=null
          ? new IconButton(icon: new Icon(Icons.menu), onPressed: null)
          : null,
      actions:isShowSearch!=null? <Widget>[
        new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(builder: (context) {
                return new Scaffold(
                  appBar: new AppBar(
                    title: new Text("搜索图书"),
                  ),
                );
              }));
            }),
      ]:null,
    );
  }
}
