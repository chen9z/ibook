import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = new TextEditingController();
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new TextField(
          controller: controller,
          decoration: new InputDecoration(hintText: "书名或者作者名"),
          maxLength: 15,
          onSubmitted: (text) {
            print(text);
          },
        ),
        actions: <Widget>[
          new Center(
            child: new Text("搜索"),
          ),
          new Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0))
        ],
      ),
    );
  }
}
