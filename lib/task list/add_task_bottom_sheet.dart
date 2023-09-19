import 'package:flutter/material.dart';
import 'package:to_do_app_route/My_theme.dart';

class AddTaskBottomSheet extends StatefulWidget {



  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime date=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
    [
      Padding(
        padding: const EdgeInsets.only(top:20,bottom: 10),
        child: Text('Add new Task',textAlign: TextAlign.center,style:Theme.of(context).textTheme.titleMedium),
      ),

      Form(child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(decoration: const InputDecoration(hintText: 'Enter Task Title'),maxLines: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(decoration: const InputDecoration(hintText: 'Enter Task Description'),
          maxLines: 4,),
        )
      ],)),

      Padding(
        padding: const EdgeInsets.only(top: 20,left: 30),
        child: Text('Select Date',style: Theme.of(context).textTheme.titleSmall,),
      ),
      InkWell(onTap: (){ShowCalendar();},

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${date.day}/${date.month}/${date.year}',textAlign: TextAlign.center,style:Theme.of(context).textTheme.titleSmall?.copyWith(color: MyTheme.greyColor)),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){}, child: Text('Add',style: Theme.of(context).textTheme.titleSmall?.copyWith(color: MyTheme.whiteColor),)),
      )


    ]);
  }

  void ShowCalendar() async{
    var chosendate = await
    showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 365)),
        lastDate: DateTime.now().add(const Duration(days: 365)));

 setState(() {

 }
 );
   if(chosendate != null){ date=chosendate;}
  }
}
