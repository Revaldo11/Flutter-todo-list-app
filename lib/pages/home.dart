import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_fab.dart';
import 'package:todo_app/theme.dart';
import '../widgets/appBars.dart';
import '../widgets/bottomNavigation.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bottomNavigationBarIndex = 0;
  bool isChecked = false;
  bool isBellActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fullAppbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.TextSubHeader,
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Image.asset(
                      isChecked
                          ? 'assets/images/checked-empty.png'
                          : 'assets/images/checked.png',
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '07.00 AM',
                    style: TextStyle(
                      color: CustomColors.TextGrey,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    child: Expanded(
                      child: Text(
                        'Going jogging with friends',
                        style: TextStyle(
                          color: CustomColors.TextGrey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isBellActive = !isBellActive;
                      });
                    },
                    child: Image.asset(
                      isBellActive
                          ? 'assets/images/bell-small-yellow.png'
                          : 'assets/images/bell-small.png',
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Slidable(
              endActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  // SlidableAction(
                  //   flex: 1,
                  //   borderRadius: BorderRadius.circular(50),
                  //   icon: Icons.delete,
                  //   label: 'Delete',
                  //   foregroundColor: Colors.red,
                  //   backgroundColor: Colors.transparent,
                  //   onPressed: (context) => (print('delete')),
                  // )
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: CustomColors.TrashRedBackground),
                      child: TextButton(
                        onPressed: () {
                          print('delete');
                        },
                        child: Image.asset('assets/images/trash.png'),
                      ),
                    ),
                  ),
                ],
              ),
              child: Container(
                height: 55,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/images/checked-empty.png'),
                    Text(
                      '08.00 AM',
                      style: TextStyle(color: CustomColors.TextGrey),
                    ),
                    Container(
                      width: 180,
                      child: Text(
                        'Send project file',
                        style: TextStyle(
                            color: CustomColors.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Image.asset('assets/images/bell-small.png'),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColors.GreenIcon, Colors.white],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColors.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/checked-empty.png'),
                  SizedBox(width: 10),
                  Text(
                    '07.00 AM',
                    style: TextStyle(
                      color: CustomColors.TextGrey,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    child: Expanded(
                      child: Text(
                        'Meeting with client',
                        style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.PurpleIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24, left: 20, bottom: 15),
              child: Text(
                'Tomorrow',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.TextSubHeader,
                ),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/checked-empty.png'),
                  SizedBox(width: 10),
                  Text(
                    '07.00 AM',
                    style: TextStyle(
                      color: CustomColors.TextGrey,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    child: Expanded(
                      child: Text(
                        'This is a long text This is a long textThis is a long text',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: CustomColors.TextHeader,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Image.asset('assets/images/bell-small.png'),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.015, 0.015],
                  colors: [CustomColors.YellowIcon, Colors.white],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.GreyBorder,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15)
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
