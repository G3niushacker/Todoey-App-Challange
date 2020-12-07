import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/const.dart';
import 'package:todoey_app/models/items_data.dart';
import 'package:todoey_app/models/tasks_list.dart';
class AddTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskVal;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: kContainerDecoration,
        child: Container(
          padding: EdgeInsets.only(top: 60.0,left: kPaddingValue,bottom: kPaddingValue,right: kPaddingValue,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add Task",style: kAddTaskTextStyle,textAlign: TextAlign.center,),
              TextField(
                onChanged: (val){
                  taskVal = val;
                },
                cursorColor: Colors.lightBlueAccent,
                autofocus: true,
                decoration: kTextFieldDecoration
              ),
              SizedBox(height: 20,),
              MaterialButton(
                color: Colors.lightBlueAccent,
                onPressed: (){
                  taskVal.isEmpty ? null : Provider.of<ItemData>(context,listen: false).addItemsToFirebase(taskVal);
                  Navigator.pop(context);
                },
                child: Text("Add"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
