import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverSafeArea(   // SliverSafeArea 是为避免将显示的内容占用重叠通知栏的区域
              sliver: SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverGridDemo(),
              )
          ),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,  // 控制展示的列数
        crossAxisSpacing: 8.0,  // 左右方向的间隔
        mainAxisSpacing: 8.0,   // 上下的间隔
        childAspectRatio: 0.7,
      ),
      delegate:
      SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
        );
      }),
    );
  }
}