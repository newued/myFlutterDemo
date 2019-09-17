import 'my_textStyle.dart';
import 'package:flutter/material.dart';
import './position/RowColumn.dart';
import './position/PreFlex.dart';
import './position/WrapFlow.dart';
import './position/StackPositioned.dart';
import './position/PreAlign.dart';

import './container/Cpadding.dart';
import './container/SizeLimit.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '常用组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
         "row_column":(context)=>RowColumn(),
         "flex":(context)=>PreFlex(),
         "wrap_Flow":(context)=>WrapFlow(),
         "StackPositioned":(context)=>StackPositioned(),
         "PreAlign":(context)=>PreAlign(),
        "/":(context)=> MyHomePage(title: '常用组件'), //
        "Cpadding":(context)=>Cpadding(),
        "SizeLimit":(context)=>SizeLimit(),
      } ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('布局类容器',style: NavTstyle(),),
            RaisedButton(
              child:Text('row column布局'),
              onPressed: ()=>{
                Navigator.pushNamed(context, 'row_column')
              },
            ),
            RaisedButton(
              child:Text('Flex 弹性布局'),
              onPressed: ()=>{
                Navigator.pushNamed(context, 'flex')
              },
            ),
            RaisedButton(
              child: Text('Stack Positioned布局'),
              onPressed: ()=>{
              Navigator.pushNamed(context, 'StackPositioned')
            },),
            RaisedButton(
              child: Text('Wrap Flow布局'),
              onPressed: ()=>{
              Navigator.pushNamed(context, 'wrap_Flow')
            },),
            RaisedButton(
              child: Text('对齐与相对定位'),
              onPressed: ()=>{
              Navigator.pushNamed(context, 'PreAlign')
            },),
            Divider(color: Colors.black26,),//分割线
            Text('容器类组件',style: NavTstyle(),),
            Text('容器类Widget一般只需要接收一个子Widget（child），他们直接或间接继承自（或包含）SingleChildRenderObjectWidget。'),
            Text('容器类Widget一般只是包装其子Widget，对其添加一些修饰（补白或背景色等）、变换(旋转或剪裁等)、或限制(大小等)。'),
            RaisedButton(
              child:Text('padding容器'),
              onPressed: ()=>{
                Navigator.pushNamed(context, 'Cpadding')
              },
            ),
            RaisedButton(
              child:Text('SizeLimit容器'),
              onPressed: ()=>{
                Navigator.pushNamed(context, 'SizeLimit')
              },
            ),
          ],
        ),
      ),
    );
  }
}
