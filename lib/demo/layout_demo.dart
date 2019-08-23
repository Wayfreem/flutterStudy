import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,   // 主轴
//        crossAxisAlignment: CrossAxisAlignment.stretch,     // 交叉轴
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Container(
              alignment: Alignment.bottomCenter,    // 用来控制图标显示的位置
              child: Icon(Icons.accessible_forward, size: 32, color: Colors.white,),
              
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          SizedBox(height: 10, width: 10,),   // 一般使用 SizedBox 作为间隔使用
          IconBadge(Icons.wallpaper),
          SizedBox(height: 10, width: 10,),   // 一般使用 SizedBox 作为间隔使用
          IconBadge(Icons.person),

        ],
      ),
    );
  }

}

class IconBadge extends StatelessWidget{

  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }


}