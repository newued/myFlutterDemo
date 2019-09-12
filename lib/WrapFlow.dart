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
        child: Text('WrapFlowState'),
      ),
    );
  }
}