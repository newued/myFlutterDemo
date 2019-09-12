import 'package:flutter/material.dart';
import 'my_textStyle.dart';
class RowColumn extends StatefulWidget{
  RowColumn({Key key}) : super(key: key);

  @override
  RowColumnState createState() => RowColumnState();
}
class RowColumnState extends State<RowColumn>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column布局组件',),
      ),
      body: Center(
          child:Column(
            children: <Widget>[
              Text('Row Column布局组件',style: TitleTstyle(),textAlign: TextAlign.center,), 
            ],
          )
      ),
    );
  }
}