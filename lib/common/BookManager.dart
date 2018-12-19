import 'package:flutter/material.dart';
import 'package:ibook/entity/BookItem.dart';

class BookManager {
  static final BookManager _manager = new BookManager._internal();

  factory BookManager() {
    return _manager;
  }

  BookManager._internal();


  List<BookItem> getTrackBook() {
    List<BookItem> bookList=new List();
    BookItem bookItem1=new BookItem(1, "凡人修仙传之仙界篇", "https://bookcover.yuewen.com/qdbimg/349573/1009927293/150","凡人修仙传之仙界篇最新章节" ,DateTime.now());
    BookItem bookItem2=new BookItem(2, "赘婿", "https://bookcover.yuewen.com/qdbimg/349573/1979049/150", "赘婿最新章节",DateTime.now());
    BookItem bookItem3=new BookItem(3, "道君", "https://bookcover.yuewen.com/qdbimg/349573/1005236478/150","道君最新章节", DateTime.now());
    BookItem bookItem4=new BookItem(4, "牧神记", "https://bookcover.yuewen.com/qdbimg/349573/1009704712/150", "牧神记之最新章节",DateTime.now());

    bookList.add(bookItem1);
    bookList.add(bookItem2);
    bookList.add(bookItem3);
    bookList.add(bookItem4);
    return bookList;
  }
}
