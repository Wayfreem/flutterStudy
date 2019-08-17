import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{

  final String imageUrl = 'https://b-ssl.duitang.com/uploads/item/' +
      '201602/15/20160215235057_EU3tS.thumb.700_0.jpeg';

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: new Text('Wayfreem'),
            accountEmail: new Text('wayfreem@163.com'),
            currentAccountPicture: new CircleAvatar( backgroundImage: new NetworkImage(imageUrl),),

            // 添加装饰
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: AssetImage('assets/images/keyclack.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6), BlendMode.dstATop)   // 设置背景图的显示样式
              ),
            ),

          ),

          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            subtitle: Text('send a Message to your friends', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22, color: Colors.black12,),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            subtitle: Text('send a Message to your friends', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22, color: Colors.black12,),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            subtitle: Text('send a Message to your friends', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22, color: Colors.black12,),
          ),

          ListTile(
            title: Text('Message', textAlign: TextAlign.start),
            subtitle: Text('send a Message to your friends', textAlign: TextAlign.start),
            leading: Icon(Icons.message, size: 22, color: Colors.black12,),
          ),

          IconButton(icon: Icon(Icons.arrow_back, semanticLabel: '返回',), onPressed: () => Navigator.pop(context))


        ],
      ),
    );
  }

}