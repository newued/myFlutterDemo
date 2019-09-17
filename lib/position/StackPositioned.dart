import 'package:flutter/material.dart';
class StackPositioned extends StatefulWidget{
  StackPositioned({Key key}) : super(key: key);
  @override
  StackPositionedState createState() => StackPositionedState();
}
class StackPositionedState extends State<StackPositioned>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Positioned布局组件'),
      ),
      body: Container(
        child:  Stack(
                  textDirection: TextDirection.rtl,//用于确定alignment对齐的参考系，
                  alignment:AlignmentDirectional.bottomCenter,//此参数决定如何去对齐没有定位（没有使用Positioned）或部分定位的子组件。
                  fit: StackFit.expand,//此参数用于确定没有定位的子组件如何去适应Stack的大小。StackFit.loose表示使用子组件的大小，StackFit.expand表示扩伸到Stack的大小。
                  overflow: Overflow.visible,//此属性决定如何显示超出Stack显示空间的子组件
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      width: 120.0,
                      color: Colors.blue[50],
                      child: Align(
                        alignment: Alignment.topRight,
                        /**
                         * widthFactor和heightFactor是用于确定Align 组件本身宽高的属性；需要一个AlignmentGeometry类型的值，表示子组件在父组件中的起始位置。
                         *它们是两个缩放因子，会分别乘以子元素的宽、高，最终的结果就是Align 组件的宽高。如果值为null，则组件的宽高将会占用尽可能多的空间。
                         */
                        widthFactor: 3.0,
                        heightFactor: 5.0,
                        child: FlutterLogo(size: 60),
                      ),
                    ),
                    Text('Flutter中使用Stack和Positioned这两个组件来配合实现绝对定位。Stack允许子组件堆叠，而Positioned用于根据Stack的四个角来确定子组件的位置。'),
                    Positioned(
                      top:60.0,
                      child:Text('Flow布局很复杂，一般很少用'),
                    ),
                    Positioned(
                      left: 0,
                      top: 180.0,
                      child: Text('positioned布局，它的left,top,right,botttom代表离stack左右上下四边的距离'),
                    )
                  ],
                ),
      ),
    );
  }
}