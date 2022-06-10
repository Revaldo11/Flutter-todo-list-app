import 'package:flutter/material.dart';
import 'package:todo_app/widgets/card_tile.dart';
import 'package:todo_app/widgets/custom_fab.dart';
import '../theme.dart';
import '../widgets/appBars.dart';
import '../widgets/bottomNavigation.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(top: 20),
          children: [
            Container(
              margin: EdgeInsets.only(left: 25, bottom: 5),
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.TextSubHeader,
                ),
              ),
            ),
            CardTile(title: "Go jogging with Christin", time: "07:00"),
            CardTile(title: "Send Email", time: "08:20"),
            CardTile(title: "Send project file", time: "08:00"),
            CardTile(title: "Meeting with client", time: "10:00"),
            CardTile(title: "Email client", time: "13:00"),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 25, bottom: 5),
              child: Text(
                'Tomorrow',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.TextSubHeader,
                ),
              ),
            ),
            CardTile(title: "Send project file", time: "08:00"),
            CardTile(title: "Meeting with client", time: "10:00"),
            CardTile(title: "Email client", time: "13:00"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar:
          BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}
