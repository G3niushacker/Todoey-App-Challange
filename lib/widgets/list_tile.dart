import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  final bool isChecked;
  final onLongTap;
  final String name;
  final Function callBack;
  ListTileWidget({this.callBack,this.isChecked,this.name,this.onLongTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongTap,
      title: Text(name,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: callBack,
        value: isChecked,
      ),
    );
  }
}
