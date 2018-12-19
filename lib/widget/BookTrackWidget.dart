import 'package:flutter/material.dart';
import 'package:ibook/common/BookManager.dart';
import 'package:ibook/entity/BookItem.dart';
import 'package:ibook/view/ViewFactory.dart';
import 'package:ibook/widget/ReadWidget.dart';

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
          for (int i = 0; i < list.length; i++) {
            return new ListTile(
                leading: new Image.network(
                  list[index].imgUrl,
                  fit: BoxFit.fill,
                  width: 60,
                  height: 80,
                ),
                title: new Text(list[index].name),
                subtitle: new Text(
                  list[index].updateTime.toString().substring(0, 16) +
                      " " +
                      list[index].newChapterName,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return new ReadWidget(
                      bookItem: list[index],
                    );
                  }));
                });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: ViewFactory.createAppBar(context, "书架", isShowMenu: true),
      body: _getBody(),
    );
  }
}
