import 'package:flutter/material.dart';
import 'package:todo_app/provider/appconfigprovider.dart';
import 'package:provider/provider.dart';

class LangaugebtnSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
            onTap: () {
              provider.ChangeAppLanguage('en');
            },
            child: provider.applanguage == 'en'
                ? GetSelectedWidget(context, 'English')
                : GetUnSelectedWidget('English')),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                provider.ChangeAppLanguage('ar');
              },
              child: (provider.applanguage == 'ar'
                  ? GetSelectedWidget(context, 'Arabic')
                  : GetUnSelectedWidget('Arabic'))),
        ),
      ],
    );
  }

  Widget GetSelectedWidget(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 24, color: Colors.lightBlue),
          ),
        ),
        Icon(
          Icons.check,
          color: Colors.lightBlue,
        ),
      ],
    );
  }

  Widget GetUnSelectedWidget(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 24, color: Colors.lightBlue),
    );
  }
}
