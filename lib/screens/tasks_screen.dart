import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/const.dart';
import 'package:todoey_app/models/tasks_list.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/widgets/list_view.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Tasks> taksList = Provider.of<List<Tasks>>(context);
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: kPaddingValue,bottom: kPaddingValue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,size: 30,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Todoey",style: kTodoeyTextStyle),
                Text("${taksList.length} Tasks",style: kTaskLengthTextStyle)
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 30.0,bottom: 30.0),
                decoration: kContainerDecoration,
                child: ListViewWidget()
            ),
          )
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (BuildContext context) =>  SingleChildScrollView(
                child:Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTasksScreen(),
                )
            ),isScrollControlled: true);
          },
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
        )
    );
  }
}
