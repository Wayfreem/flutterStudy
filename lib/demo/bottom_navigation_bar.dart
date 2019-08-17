import 'package:flutter/material.dart';


class BottomNavigationBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{

  int _currentIndex = 0;

  // 包含有 setState 的方法，不能放到 Widget bulid 方法体中
  void _onTapHandler(int index){
    // 类似于一个生命周期函数
    setState(() {
      print(index);
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        onTap: _onTapHandler,
        items: <BottomNavigationBarItem> [

          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explore'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('List'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Person'),
          ),

        ]
    );
  }

}