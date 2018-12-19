import 'package:flutter/material.dart';
import 'package:ibook/entity/BookItem.dart';
import 'package:flutter/services.dart';

class ReadWidget extends StatefulWidget {
  BookItem bookItem;

  ReadWidget({Key key,this.bookItem}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new ReadState();
  }
}

class ReadState extends State<ReadWidget> {

  @override
  Widget build(BuildContext context) {
    //全屏显示
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return new Scaffold(
      body: new Text(widget.bookItem.name),
    );
  }
}
