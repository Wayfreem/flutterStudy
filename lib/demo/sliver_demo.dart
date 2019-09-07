import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text('SliverAppBar'),
            pinned: true, // 固定头部
            floating: true, // 这个是与 pinned 相对的属性，

            expandedHeight: 178.0,  // 增加伸展空间
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                  'ninghao Flutter'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 15.0, letterSpacing: 3.0, fontWeight: FontWeight.w400
                  ),
                ),
              background: Image.network(
                'https://picsum.photos/id/322/800/600',
                fit: BoxFit.cover,),

            ),
          ),

          SliverSafeArea(
              // SliverSafeArea 是为避免将显示的内容占用重叠通知栏的区域
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
          )),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 控制展示的列数
        crossAxisSpacing: 8.0, // 左右方向的间隔
        mainAxisSpacing: 8.0, // 上下的间隔
        childAspectRatio: 0.7,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        );
      }),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 32.0),
          child: Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 20,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(posts[index].imageUrl, fit: BoxFit.cover,),
                  ),
                  Positioned(
                      top: 32.0,
                      left: 32.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            posts[index].title,
                            style: TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                          Text(
                            posts[index].author,
                            style: TextStyle(fontSize: 13.0, color: Colors.white),
                          )
                        ],
                      ))
                ],
              )),
        );
      }),
    );
  }
}
