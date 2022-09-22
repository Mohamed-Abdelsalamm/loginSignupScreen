import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({Key? key,

    this.backGround =Colors.greenAccent,
    this.width = double.infinity,
    required this.name,
    required this.height,
    required this.function,

  })
      : super(key: key);

  String? name;
  double? height;
  double? width ;
  Color? backGround;
  void Function() function;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: MaterialButton(
        onPressed: function,
        color: backGround,
        height: height,
        child: Text(
          name!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
