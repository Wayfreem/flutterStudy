import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget{

  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl, fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemBuilder: _gridItemBuilder,
        padding: EdgeInsets.all(8.0),
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 3,
          maxCrossAxisExtent: 150.0,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget{

  List<Widget> _builderTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100,    //  GridView.extent 特有的属性值
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.vertical,
      children: _builderTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget{

  List<Widget> _builderTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text('Item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,    //  GridView.count 特有的属性值
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.vertical,
      children: _builderTiles(100),
    );
  }
}

class PageViewDemoBuilderDemo extends StatelessWidget{

  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        ),
        Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(posts[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(posts[index].author),
              ],
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: PageView(

//        pageSnapping: false,  // 指的是页面切换的动画效果，false 表示不会拖动就翻页
//        reverse: true,        // 正常滑动是向右滑动，设置这个属性之后就会向左滑动表示翻页
//        scrollDirection: Axis.vertical, // 默认是水平翻页，设置为这个属性时候为垂直翻页
        onPageChanged: (currentPage) => debugPrint('Page: ${currentPage}'),   // change事件

        controller: PageController(   //  使用 PageController 对暂时的界面做控制
          initialPage: 1,
          keepPage: false,
          viewportFraction: 0.85,  // 表示占用界面的宽度为80%
        ),

        children: <Widget>[
          Container(
            color: Colors.brown[900],
            alignment: Alignment(0.0, 0.0),
            child: Text('ONE', style: TextStyle(fontSize: 40, color: Colors.white),),
          ),
          Container(
            color: Colors.grey[900],
            alignment: Alignment(0.0, 0.0),
            child: Text('TWO', style: TextStyle(fontSize: 40, color: Colors.white),),
          ),
          Container(
            color: Colors.blueGrey[900],
            alignment: Alignment(0.0, 0.0),
            child: Text('THREE', style: TextStyle(fontSize: 40, color: Colors.white),),
          ),

        ],
      ),
    );
  }

}