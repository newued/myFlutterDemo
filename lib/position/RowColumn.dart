import 'package:flutter/material.dart';
import '../my_textStyle.dart';
class RowColumn extends StatefulWidget{
  RowColumn({Key key}) : super(key: key);

  @override
  RowColumnState createState() => RowColumnState();
}
class RowColumnState extends State<RowColumn>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column布局组件',),
      ),
      body: Column(
          children: <Widget>[
            Row(
              textDirection: TextDirection.ltr,//水平方向子组件的布局顺序，默认是系统当前locale环境的文本方向
              mainAxisAlignment: MainAxisAlignment.start,//主轴对齐 
              mainAxisSize: MainAxisSize.max,//row在主轴方向占用的空间，默认max,表示尽可能多的占用水平方向的空间，此时无论子组件时机占用多少水平空间，row的宽度等于水平方向的最大宽度，可取min
              verticalDirection: VerticalDirection.down,//纵轴的对齐方式 默认down表示从上到下
              crossAxisAlignment: CrossAxisAlignment.center,//纵轴对齐
              children: <Widget>[// list<widget> 子组件数组
                Text('Row布局组件',style: TitleTstyle(),textAlign: TextAlign.center,), 
                Text('Row布局组件',style: TitleTstyle(),textAlign: TextAlign.center,), 
              ],
            ),
            Column(
              textDirection: TextDirection.ltr,//水平方向子组件的布局顺序，默认是系统当前locale环境的文本方向
              mainAxisAlignment: MainAxisAlignment.center,//主轴对齐 
              mainAxisSize: MainAxisSize.max,//row在主轴方向占用的空间，默认max,表示尽可能多的占用水平方向的空间，此时无论子组件时机占用多少水平空间，row的宽度等于水平方向的最大宽度，可取min
              verticalDirection: VerticalDirection.down,//纵轴的对齐方式 默认down表示从上到下
              crossAxisAlignment: CrossAxisAlignment.center,//纵轴对齐
              children: <Widget>[// list<widget> 子组件数组
                Text('Column布局组件',style: TitleTstyle(),textAlign: TextAlign.center,), 
                Text('Column布局组件',style: TitleTstyle(),textAlign: TextAlign.center,), 
              ],
            ),
            ConstrainedBox(//ConstrainedBox或SizedBox 强制更改宽度限制
              constraints: BoxConstraints(minWidth: double.infinity),//使宽度占用尽可能多的空间
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('hi'),
                  Text('world')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度  
                      children: <Widget>[
                        Text("只有对最外面的Row或Column会占用尽可能大的空间，里面Row或Column所占用的空间为实际大小"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded( //要让里面的Column占满外部Column，可以使用Expanded 组件：
              child: Container(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, //垂直方向居中对齐
                  children: <Widget>[
                    Text("里面的Column占满外部Column,可以使用Expanded 组件, "),
                  ],
                ),
              ),
            )
          ],
      ),
    );
  }
}