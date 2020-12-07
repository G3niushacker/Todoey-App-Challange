import 'package:flutter/material.dart';
import 'file:///D:/appBrewery/todoey_app/lib/services/item_database.dart';
import 'package:todoey_app/models/items_data.dart';
import 'package:todoey_app/models/tasks_list.dart';
import 'package:todoey_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ItemData>(
          create: (context) => ItemData(),
        ),
        StreamProvider<List<Tasks>>.value(value: ItemDataBase().getItemsFromDatabase)
      ],
      child : MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
