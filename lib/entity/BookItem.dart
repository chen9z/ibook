import 'package:flutter/material.dart';

class BookItem {
  int id;
  String name;
  String imgUrl;
  String newChapterName;
  DateTime updateTime;

  BookItem(int id, String name, String imgUrl, String newChapterName,DateTime updateTime) {
    this.id = id;
    this.name = name;
    this.imgUrl = imgUrl;
    this.newChapterName=newChapterName;
    this.updateTime = updateTime;
  }
}
