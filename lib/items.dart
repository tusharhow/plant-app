import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
    this.txt,
    this.img,
  }) : super(key: key);
  @required
  final txt;
  final img;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 15,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Image.asset(img),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            txt,
            style:
                TextStyle(fontWeight: FontWeight.normal, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
