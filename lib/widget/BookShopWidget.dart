import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:ibook/view/ViewFactory.dart';

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
      appBar: ViewFactory.createAppBar(context, "书城"),
      body: new WebviewScaffold(
        url: "https://m.qidian.com",
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
