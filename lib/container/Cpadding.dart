import 'package:flutter/material.dart';
class Cpadding  extends StatefulWidget {
  Cpadding({Key key}) : super(key: key);
  @override
   CpaddingState createState() => CpaddingState();
}
class CpaddingState extends State<Cpadding>{
  @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(
       title:Text('填充(padding)容器'),
     ),
     body: Padding(
      padding:EdgeInsets.all(16.0),
      child: Padding(
              padding: EdgeInsets.all(16.0),//所有方向均使用相同数值的填充。
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),//以设置具体某个方向的填充(可以同时指定多个方向)。
                    child: Text('hello world!'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),//用于设置对称方向的填充 vertical指top和bottom，horizontal指left和right。
                    child: Text('I am jack'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),//分别指定四个方向的填充
                    child: Text('you friend'),
                  )
                ],
              ),
            )

     ),
   );
 }
}