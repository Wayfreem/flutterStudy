import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{

  final String _author = '李白';
  final String _title = '将进酒';


  @override
  Widget build(BuildContext context) {

    Widget TextWidget(){
      return Text(
        '《$_title》-- $_author. 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.left,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );
    }

    Widget RichTextWidget(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            text: 'Wayfreem',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500
            ),
            children: <InlineSpan>[

              TextSpan(text: '.love', style: TextStyle(fontSize: 18, color: Colors.grey)),

            ]
          )
        ),
      );
    }

    Widget ContainerWidget(){
      return Container(
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              child: Icon(Icons.pool, size: 32, color: Colors.white,),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(7),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
               color: Colors.blue,
                border: Border.all(
                  color: Colors.deepPurpleAccent,
                  width: 3.0,
                  style: BorderStyle.solid
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 25,
                    spreadRadius: -9.0
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return ContainerWidget();
  }

}