import 'package:flutter/material.dart';
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
        child: Text('Flex'),
      ),
    );
  }
}