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
        child: Text('Stack Positioned'),
      ),
    );
  }
}