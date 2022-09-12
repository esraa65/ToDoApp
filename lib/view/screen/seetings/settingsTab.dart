import 'package:flutter/material.dart';
import 'package:todo_app/provider/appconfigprovider.dart';
import 'package:todo_app/view/screen/seetings/langaugebtnSheet.dart';
import 'package:todo_app/view/screen/seetings/themebtnSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white24, borderRadius: BorderRadius.circular(18)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              AppLocalizations.of(context).settings,
              style: TextStyle(color: Colors.blueAccent, fontSize: 24),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            AppLocalizations.of(context).language,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(vertical: 22),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(38)),
          child: InkWell(
            onTap: () {
              showLanguagebtnSheet();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    provider.GetSelectedLanguageText(),
                    style: TextStyle(fontSize: 18, color: Colors.lightBlue),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.lightBlue,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            AppLocalizations.of(context).brightness,
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(vertical: 22),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(38)),
          child: InkWell(
            onTap: () {
              showthemebtnSheet();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Light',
                    style: TextStyle(fontSize: 18, color: Colors.lightBlue),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: Colors.lightBlue,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void showLanguagebtnSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LangaugebtnSheet();
        });
  }

  void showthemebtnSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return ThemebtnSheet();
        });
  }
}
