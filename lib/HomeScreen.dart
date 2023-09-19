import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_route/My_theme.dart';
import 'package:to_do_app_route/settings/settingsTab.dart';
import 'package:to_do_app_route/task%20list/add_task_bottom_sheet.dart';
import 'package:to_do_app_route/task%20list/tasklistTab.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('    To Do List',
        style: Theme.of(context).textTheme.titleLarge,
        )),

      bottomNavigationBar: BottomAppBar(shape: CircularNotchedRectangle(),
        notchMargin: 12,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.list,size: 35,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings,size: 35,),label: ''),

        ],

        currentIndex: selected,
        onTap: (index){selected=index;setState(() {

        });}),
      ),

        floatingActionButton:FloatingActionButton(shape: StadiumBorder(
            side:BorderSide(
                color: MyTheme.whiteColor,
                width: 4) ),
            onPressed: (){
          showAddTaskBottomSheet();
            },child: Icon(Icons.add,size: 30,) ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,

      body:Tabs[selected],
    );
  }
  List<Widget>Tabs =[SettingsTab(),TaskListTab()];

  void showAddTaskBottomSheet()
  {
    showModalBottomSheet(context: context, builder: ((context)=>AddTaskBottomSheet()));}

}
