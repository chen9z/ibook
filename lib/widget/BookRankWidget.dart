import 'package:flutter/material.dart';
import 'package:ibook/entity/BookItem.dart';

class BookRankWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BookRankState();
  }
}

class BookRankState extends State<BookRankWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("排行"),
        centerTitle: true,
      ),
      body: null,
    );
  }

}

