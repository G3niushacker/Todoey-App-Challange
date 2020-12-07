import 'package:flutter/material.dart';
import 'package:todoey_app/models/items_data.dart';
import 'package:todoey_app/models/tasks_list.dart';
import 'package:todoey_app/widgets/list_tile.dart';
import 'package:provider/provider.dart';
class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Tasks> taksList = Provider.of<List<Tasks>>(context);
    return taksList != null ? ListView.builder(
      itemCount: taksList.length,
      itemBuilder: (ctx,i){
        return ListTileWidget(
          onLongTap: (){
            Provider.of<ItemData>(context,listen: false).dleteItems(taksList[i].name);
          },
          name: taksList[i].name,
          isChecked: taksList[i].isDone,
          callBack: (val){
            Provider.of<ItemData>(context,listen: false).checkListItem(taksList[i].name);
          },
        );
      },
    ):
    Center(child: CircularProgressIndicator(),);
  }
}
