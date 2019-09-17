import 'package:flutter/material.dart';
import '../my_textStyle.dart';
class PreAlign extends StatefulWidget{
  PreAlign({Key key}) : super(key: key);
  @override
  PreAlignState createState() => PreAlignState();
}
class PreAlignState extends State<PreAlign>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('对齐与相对定位'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Alignment Widget会以矩形的中心点作为坐标原点,2个水平（或垂直）单位则等于矩形的宽（或高）'),
            Text('Align和Stack对比:',style: NavTstyle(),),
            Text('Align和Stack/Positioned都可以用于指定子元素相对于父元素的偏移，但它们还是有两个主要区别：'),
            Text('1.定位参考系统不同；Stack/Positioned定位的的参考系可以是父容器矩形的四个顶点；而Align则需要先通过alignment 参数来确定坐标原点，不同的alignment会对应不同原点，最终的偏移是需要通过alignment的转换公式来计算出。'),
            Text('2.Stack可以有多个子元素，并且子元素可以堆叠，而Align只能有一个子元素，不存在堆叠。'),
          ],
        ),
      ),
    );
  }
}