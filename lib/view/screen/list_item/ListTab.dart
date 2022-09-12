import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_app/view/screen/list_item/todo_widget.dart';

class ListTab extends StatefulWidget {
  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
  DateTime selectedDay = DateTime.now();

  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TableCalendar(
            selectedDayPredicate: (day) {
              return isSameDay(selectedDay, day);
            },
            onDaySelected: (sDay, fDay) {
              setState(() {
                selectedDay = sDay;
                focusedDay = fDay;
              });
            },
            calendarFormat: CalendarFormat.week,
            focusedDay: focusedDay,
            firstDay: DateTime.now().subtract(Duration(days: 365)),
            lastDay: DateTime.now().add(Duration(days: 365)),
            calendarStyle: CalendarStyle(
              selectedTextStyle: TextStyle(color: Colors.greenAccent),
              // selectedDecoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20) ),
              weekendTextStyle: TextStyle(color: Colors.black),
              defaultTextStyle: TextStyle(color: Colors.black),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (buildContext, index) {
              return Todowidget();
            },
            itemCount: 20,
          ))
        ],
      ),
    );
  }
}
