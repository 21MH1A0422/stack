import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  bool isSelect=false;
  bool isSelected=false;
  bool isSelection=false;
  bool isSelecter=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Switches"),),
      body: Column(children: [
        ListTile(leading: Icon(Icons.lightbulb,size: 30,color: Colors.yellow,),
          title: Text("Android Switch"),
        trailing: Switch(activeColor: Colors.green,inactiveTrackColor: Colors.red,
        value: isSelect,onChanged: (value){
          setState(() {
            isSelect=value;
          });
        },),),
        ListTile(leading: Icon(Icons.lightbulb,size: 30,color: Colors.yellow,),
          title: Text("ios Switch"),
          trailing: CupertinoSwitch(value: isSelecter,onChanged: (value){
            setState(() {
              isSelecter=value;
            });
          },),),
        ListTile(leading: Icon(Icons.lightbulb,size: 30,color: Colors.yellow,),
          title: Text("Adaptive Switch"),
          trailing: Switch(activeTrackColor: Colors.red,inactiveTrackColor: Colors.teal,
    activeColor: Colors.red,
    value: isSelection,onChanged: (value){
            setState(() {
              isSelection=value;
            });
          },),),
        ListTile(leading: Icon(Icons.lightbulb,size: 30,color: Colors.yellow,),
          title: Text("Image Switch"),
          trailing: Switch(thumbColor: MaterialStateProperty.resolveWith((Set states){
            if (states.contains(MaterialState.disabled)){
              return Colors.black;
            }
            return Colors.black;
          }),
    value: isSelected,onChanged: (value){
            setState(() {
              isSelected=value;
            });
          },),),

      ],),
    );
  }
}
