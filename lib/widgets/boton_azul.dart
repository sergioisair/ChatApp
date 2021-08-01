import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BotonAzul({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue,
      disabledColor: Colors.grey,
      elevation: 2,
      highlightElevation: 5,
      shape: StadiumBorder(),
      child: Container(
        width: double.infinity,
        height: 45,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
