
import 'package:flutter/material.dart';

class ThemebtnSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Light',
                style: TextStyle(fontSize: 24, color: Colors.lightBlue),),
            ),
            Icon(Icons.check,color: Colors.lightBlue,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Dark', style: TextStyle(fontSize: 24, color: Colors.lightBlue),),
        )
      ],
    );
  }
}
