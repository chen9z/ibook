import 'package:flutter/material.dart';
import 'package:ibook/view/BookRankWidget.dart';
import 'package:ibook/view/BookShopWidget.dart';
import 'package:ibook/view/BookTrackWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iBook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "iBook"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;
  List<Widget> pageList = new List();

  @override
  void initState() {
    pageList.add(new BookTrackWidget());
    pageList.add(new BookShopWidget());
    pageList.add(new BookRankWidget());
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.search), onPressed: searchIntent),
//        ],
//      ),
      body: pageList[pageIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.library_books), title: new Text("书架")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.shop), title: new Text("书城")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.linear_scale), title: new Text("排行")),
        ],
        currentIndex: pageIndex,
        onTap: (int index) {
          setState(() {
            pageIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
