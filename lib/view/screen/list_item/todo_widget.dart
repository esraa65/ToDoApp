import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todowidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
              // onPressed: (){},
               backgroundColor: Color(0xFFFE4A49),
               foregroundColor: Colors.white,
                 icon: Icons.delete,
                 label: 'Delete',
              borderRadius: BorderRadius.circular(49),padding: EdgeInsets.all(4),
              ),
        ],
      ),
      child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(10),
                height: 35,
                width: 4,
                color: Theme.of(context).primaryColor,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('title',
                          style: TextStyle(fontSize: 14,color: Colors.black)),
                      Text('subtitle',
                        style: TextStyle(fontSize: 14,color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset('assets/images/Icon awesome-check.png'),
              ),
            ],
          )),
    );
  }
}
