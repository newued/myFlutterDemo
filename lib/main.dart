import 'package:flutter/material.dart';
import 'RowColumn.dart';
import 'PreFlex.dart';
import 'WrapFlow.dart';
import 'StackPositioned.dart';
import 'PreAlign.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '布局类组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
         "row_column":(context)=>RowColumn(),
         "flex":(context)=>PreFlex(),
         "wrap_Flow":(context)=>WrapFlow(),
         "StackPositioned":(context)=>StackPositioned(),
         "PreAlign":(context)=>PreAlign(),
        "/":(context)=> MyHomePage(title: '布局类组件'), //注册首页路由
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
            },)
          ],
        ),
      ),
    );
  }
}
