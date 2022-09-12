import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AddBtnTodoWidget extends StatefulWidget {
  @override
  State<AddBtnTodoWidget> createState() => _AddBtnTodoWidgetState();
}

class _AddBtnTodoWidgetState extends State<AddBtnTodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
           AppLocalizations.of(context).add_new_task ,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          TextField(
            decoration: InputDecoration(
                labelText: AppLocalizations.of(context).title_of_task,
                labelStyle: TextStyle(color: Colors.black,fontSize: 14)),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: AppLocalizations.of(context).details,
                labelStyle: TextStyle(color: Colors.black,fontSize: 14)),
            minLines: 4,
            maxLines: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(AppLocalizations.of(context).date,style: TextStyle(fontSize: 14,color: Colors.black),
            ),
          ),
          InkWell(
            onTap: () {
              showDateDialog();
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('10/1/2000',
                  style: TextStyle(fontSize: 14,color: Colors.black),
            ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text(AppLocalizations.of(context).add))
        ],
      ),
    );
  }

  void showDateDialog() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}
