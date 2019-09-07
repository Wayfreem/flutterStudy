import 'package:flutte_ninghao_study/demo/listview_demo.dart';
import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar.dart';
import 'demo/drawer_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/view_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),   // 点击 tabBarView 时的背景颜色
        splashColor: Colors.white70,        // 点击是水波纹效果的背景色

      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton( icon: Icon(Icons.menu), tooltip: '导航', onPressed: () {},),
          title: Text('Flutter 学习'),
          actions: <Widget>[
            IconButton( icon: Icon(Icons.search), tooltip: '搜索', onPressed: () {}, ),
          ],
          elevation: 1.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black26,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.directions_run),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
              Tab(icon: Icon(Icons.view_quilt),),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.directions_run, size: 120),
            ListViewDemo(),
            // Icon(Icons.change_history, size: 120),
            BasicDemo(),
            ViewDemo(),
            SliverDemo(),
          ]
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
//        drawerDragStartBehavior: DragStartBehavior.down,
      ),
    );
  }
}