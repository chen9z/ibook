import 'package:flutter/material.dart';
import 'package:ibook/view/ViewUtils.dart';

class BookShopWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BookShopState();
  }
}

class BookShopState extends State<BookShopWidget> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: ViewUtils.createAppBar(context, "书城",isShowSearch: true),
      body: new Text("书架")
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
