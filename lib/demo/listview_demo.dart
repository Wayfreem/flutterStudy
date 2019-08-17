import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          // 第一个
          Container(
            child: Column(
              children: <Widget>[
                Image.network(posts[index].imageUrl),
                SizedBox(height: 8.0,),

                Text(posts[index].title, style: Theme.of(context).textTheme.title,),
                Text(posts[index].author, style: Theme.of(context).textTheme.subtitle,),
                SizedBox(height: 8.0,),

              ],
            ),
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: _listItemBuilder,
      itemCount: posts.length,
    );
  }
}