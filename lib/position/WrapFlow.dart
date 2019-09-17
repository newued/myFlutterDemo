import 'package:flutter/material.dart';
class WrapFlow extends StatefulWidget{
  WrapFlow({Key key}) : super(key: key);
  @override
  WrapFlowState createState() => WrapFlowState();
}
class WrapFlowState extends State<WrapFlow>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapFlowState布局组件'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('使用row和colum时，如果子widget超出屏幕范围，则会报溢出错误'),
            Text('flutter通过Wrap和Flow来支持流式布局，溢出后会自动折行'),
            Wrap(
              direction: Axis.horizontal,//布局方向
              textDirection: TextDirection.rtl,//子widget排列对齐方式
              verticalDirection: VerticalDirection.down,//子widget排列方向
              alignment: WrapAlignment.start,//主轴方向的对齐方式
              spacing: 10.0,//主轴方向子widget的间距
              runAlignment: WrapAlignment.start,//纵轴方向的对齐方式
              runSpacing: 20.0,//纵轴方向子widget的间距
              crossAxisAlignment: WrapCrossAlignment.start,//纵轴对齐方式
              children: <Widget>[
                Text('0a'*20),
                Text('1a'*10),
                Text('2a'*5),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                  label: new Text('Hamilton'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                  label: new Text('Lafayette'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                  label: new Text('Mulligan'),
                ),
                new Chip(
                  avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                  label: new Text('Laurens'),
                ),
                Stack(
                  textDirection: TextDirection.rtl,//用于确定alignment对齐的参考系，
                  alignment:AlignmentDirectional.bottomCenter,//此参数决定如何去对齐没有定位（没有使用Positioned）或部分定位的子组件。
                  fit: StackFit.loose,//此参数用于确定没有定位的子组件如何去适应Stack的大小。StackFit.loose表示使用子组件的大小，StackFit.expand表示扩伸到Stack的大小。
                  overflow: Overflow.clip,//此属性决定如何显示超出Stack显示空间的子组件
                  children: <Widget>[
                    Text('Flow布局很复杂，一般很少用'),
                    Positioned(
                      left: 18.0,
                      top: 18.0,
                      child: Text('positioned布局，它的left,top,right,botttom代表离stack左右上下四边的距离'),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}