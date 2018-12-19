import 'package:flutter/material.dart';
import 'package:ibook/common/BookManager.dart';
import 'package:ibook/entity/BookItem.dart';
import 'package:ibook/view/ViewFactory.dart';

class BookTrackWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BookTrackState();
  }
}

class BookTrackState extends State<BookTrackWidget> {
  _getBody() {
    BookManager bookManager = new BookManager();
    List<BookItem> list = bookManager.getTrackBook();

    return new ListView.separated(
        itemCount: list.length,
        separatorBuilder: (BuildContext context, int index) => new Divider(),
        itemBuilder: (context, index) {
//          if (index.isOdd) return new Divider();'
          for (int i = 0; i < list.length; i++) {
            return new Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: new Row(
                children: <Widget>[
                  new Image.network(
                    list[index].imgUrl,
                    fit: BoxFit.fill,
                    width: 60,
                    height: 80,
                  ),
                  Expanded(
                      child: new Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: new Column
                            (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(list[index].name),
                              new Text(
                                list[index].updateTime.toString().substring(
                                    0, 16) +
                                    " " +
                                    list[index].newChapterName,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),)

                  )
                ],
              )
              ,
            );
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:ViewFactory.createAppBar(context, "书架",isShowMenu: true),
      body: _getBody(),
    );
  }


}
