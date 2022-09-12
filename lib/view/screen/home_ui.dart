import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/view/screen/list_item/addbtntodowidget.dart';
import '../../model/dataoftabslist.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.LightScaffoldbackground,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).app_title,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(side: BorderSide(color: Colors.white, width: 4)),
        child: Icon(Icons.add),
        onPressed: () {
          showAddtodosheet();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: (0),
        child: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            currentindex = index;
            setState(() {});
          },
          elevation: (0),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(label: '', icon: Icon(Icons.list)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.settings))
          ],
        ),
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        notchMargin: (8),
      ),
      body: tabs[currentindex],
    );
  }

  void showAddtodosheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return AddBtnTodoWidget();
        });
  }
}
