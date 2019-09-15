import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: null, child: Text('Home')),
              FlatButton(
                  onPressed: () {
                    /* 通过  Navigator.of(context).push() 的方式跳转路由
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Page(
                              title: 'About',
                            )));*/

                    // 通过 main.dart 中设置的路由表跳转
                    Navigator.pushNamed(context, 'about');
                  },
                  child: Text('about')),
            ],
        ),
    ));
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
