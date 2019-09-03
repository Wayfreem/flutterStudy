import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {

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