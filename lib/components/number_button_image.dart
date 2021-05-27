import 'package:flutter/material.dart';
// import '../utilities/constants.dart';
// import 'dart:async';

class NumberButtonImage extends StatefulWidget {
  NumberButtonImage({@required this.number, this.onPressed});

  final String number;
  final Function onPressed;

  @override
  _NumberButtonImageState createState() => _NumberButtonImageState();
}

class _NumberButtonImageState extends State<NumberButtonImage> {
  // double _blurSize = 15.0;

  // void change() {
  //   widget.onPressed();
  //   // setState(() {
  //   //   _blurSize = 5.0;
  //   //   Timer(Duration(seconds: 1), () => _blurSize = 15.0);
  //   // });
  //   // setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Container(
        height: 85,
        width: 85,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15.0,
              offset: Offset(15.0, 15.0),
            ),
          ],
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/images/buttons/key2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            widget.number,
            style: TextStyle(
              fontSize: 65.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
