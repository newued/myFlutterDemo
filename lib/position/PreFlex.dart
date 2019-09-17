import 'package:flutter/material.dart';
import '../my_textStyle.dart';
class PreFlex extends StatefulWidget{
  PreFlex({Key key}) : super(key: key);
  @override
  FlexState createState() => FlexState();
}
class FlexState extends State<PreFlex>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('flex布局组件'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Expanded是按比例扩伸子组件所占用的空间',style: TitleTstyle()),
            Text('Expanded的flex参数为弹性系数，如果为0或null，则child是没有弹性的，即不会被扩伸占用的空间。如果大于0，所有的Expanded按照其flex的比例来分割主轴的全部空闲空间。'
            ,style: CommonTstyle(),),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[//子组件
                Expanded(
                  flex:1,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,//扩展子组件
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                )
              ],
            ),
            Padding(//Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间  
              padding: EdgeInsets.only(top:20.0),
              child: SizedBox(
                height:100.0,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30.0,
                        color: Colors.redAccent,
                        width:double.infinity,
                        child:Text('Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间 此条高度为2') ,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 1,
                      child: const SizedBox.shrink(),
                    ),
                    Expanded(
                      child: Container(
                        height: 30.0,
                        width: double.infinity,
                        color: Colors.blueAccent,
                        child: Text('Flex的三个子widget，在垂直方向按2：1：1来占用100像素空间,此条高度为1'),
                      ),
                    )
                  ],
                ),
              ),
              )
          ],
        ),
      ),
    );
  }
}