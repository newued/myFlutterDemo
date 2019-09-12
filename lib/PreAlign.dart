import 'package:flutter/material.dart';
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
        child: Text('对齐与相对定位'),
      ),
    );
  }
}