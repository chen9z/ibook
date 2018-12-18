import 'package:flutter/material.dart';
import 'package:ibook/BookManager.dart';
import 'package:ibook/entity/BookItem.dart';

class BookTrackWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BookTrackState();
  }
}

class BookTrackState extends State<BookTrackWidget>{


  _getBody() {
    BookManager bookManager = new BookManager();
    List<BookItem> list = bookManager.getTrackBook();

    return new ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
//          if (index.isOdd) return new Divider();
          for (int i = 0; i < list.length; i++) {
            return new Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: new Row(
                children: <Widget>[
                  new Image.network(list[index].imgUrl, fit: BoxFit.fill,
                    width: 90,
                    height: 120,),
                  Expanded(child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(list[index].name),
                      new Text(
                        list[index].updateTime.toString().substring(0, 16) +
                            " " +
                            list[index].newChapterName,
                        overflow: TextOverflow.ellipsis,)
                    ],),)
                ],
              ),
            );
          }
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("书架"),
        centerTitle: true,
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),

        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: searchIntent),
        ],
      ),
      body: _getBody(),);
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
}
