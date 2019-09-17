import 'package:flutter/material.dart';

class SizeLimit extends StatefulWidget{
  SizeLimit({Key key}):super(key:key);
  @override
  SizeLimitState createState()=>SizeLimitState();

}
Widget redBox=DecoratedBox(//盒子修饰
  decoration: BoxDecoration(color: Colors.red),//代表将要绘制的装饰
  position: DecorationPosition.foreground,//在子组件之后还是之后绘制
);
class SizeLimitState extends State<SizeLimit>{
  @override
  Widget build(BuildContext contenxt){
    return new Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox、SizedBox、UnconstrainedBox、AspectRatio'),
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(//用于设置限制条件
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 50.0, //最小高度为50像素
                //maxHeight: 80.0,
                //maxWidth: 80.0,
              ),
              child: Container(
                  height: 5.0, 
                  child: redBox
              ),
            ),
            SizedBox(//给子元素指定固定的宽高
              width: 80.0,
              height: 80.0,
              child: redBox,
            ), 
            ConstrainedBox(//有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的。
                constraints: BoxConstraints(minWidth: 110.0, minHeight: 20.0),//限制
                child: ConstrainedBox(//有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的。
                  constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),//限制
                  child: redBox,
                )
            ),
            ConstrainedBox(//有多重限制时，对于minWidth和minHeight来说，是取父子中相应数值较大的。
                constraints: BoxConstraints(minWidth: 110.0, minHeight: 20.0),//限制
                child: UnconstrainedBox(///“去除”父级限制
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                    child: redBox,
                  ),
                )
            ),
            Text('当我们发现已经使用SizedBox或ConstrainedBox给子元素指定了宽高，但是仍然没有效果时，几乎可以断定：已经有父元素已经设置了限制！'),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
                    borderRadius:BorderRadius.circular(3.0),
                    boxShadow:  [ //阴影
                      BoxShadow(
                          color:Colors.black54,
                          offset: Offset(2.0,2.0),
                          blurRadius: 4.0
                      )
                    ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
                  child: Text("装饰容器", style: TextStyle(color: Colors.white),),
                ),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}