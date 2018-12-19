import 'package:flutter/material.dart';
import 'package:ibook/widget//BookRankWidget.dart';
import 'package:ibook/widget/BookShopWidget.dart';
import 'package:ibook/widget/BookTrackWidget.dart';

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
      drawer: _getDrawer(),
    );
  }

  _getDrawer() {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Text("just read"),
            decoration: new BoxDecoration(color: Colors.blue),
          ),
          new ListTile(
            title: new Text("分享应用"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text("免责声明"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: new Text("意见反馈"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
