
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ibook/common/ApiConfig.dart';
import 'package:ibook/common/DioManager.dart';

class SearchWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SearchState();
  }
}

class SearchState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = new TextEditingController();
    return new Scaffold(
      appBar: new AppBar(
        title: new TextField(
          controller: controller,
          decoration: new InputDecoration(hintText: "书名或者作者名"),
          maxLength: 15,
          onSubmitted: (text) async {
            DioManager manager=new DioManager();
            var response =await manager.getInstance(ApiConfig.yuewen).get(ApiConfig.yuewen);
            print(response.data.toString());
            setState(() {

            });
          },
        ),
        actions: <Widget>[
          new Center(
            child: new Text("搜索"),
          ),
          new Padding(padding: EdgeInsets.fromLTRB(0, 0, 20, 0))
        ],
      ),
      body: _getListData(),
    );
  }

  _getListData() {

  }
}
