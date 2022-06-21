import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../theme.dart';

class CardTile extends StatefulWidget {
  CardTile({
    Key? key,
    required this.time,
    required this.title,
  }) : super(key: key);
  final String time;
  final String title;
  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  bool isChecked = false;
  bool isBellActive = false;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
              onPressed: (context) => (print("Send")),
              backgroundColor: Color(0xFF7BC043),
              foregroundColor: Colors.white,
              icon: Icons.attach_email_outlined),
          SlidableAction(
            onPressed: (context) => (print("Favorite")),
            backgroundColor: Color.fromARGB(255, 228, 140, 40),
            foregroundColor: Colors.white,
            icon: Icons.star_border_outlined,
          ),
          SlidableAction(
            onPressed: (context) => (print("Delete")),
            backgroundColor: Color.fromARGB(255, 245, 86, 86),
            foregroundColor: CustomColors.TextWhite,
            icon: Icons.delete,
          ),
        ],
      ),
      child: Container(
        height: 70,
        padding: EdgeInsets.fromLTRB(0, 13, 5, 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  isChecked = !isChecked;
                });
                print('ischecked: $isChecked');
              },
              child: isChecked
                  ? Image.asset('assets/images/checked.png')
                  : Image.asset('assets/images/checked-empty.png'),
            ),
            Text(
              widget.time,
              style: TextStyle(color: CustomColors.TextGrey),
            ),
            Container(
              width: 180,
              child: Text(
                widget.title,
                style: TextStyle(
                    color: CustomColors.TextHeader,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Image.asset('assets/images/bell-small.png'),
          ],
        ),
      ),
    );
  }
}
