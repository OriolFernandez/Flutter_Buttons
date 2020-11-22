import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    this.color,
    this.borderRadius: 5.0,
    this.onPressed,
    this.child,
    this.height = 50,
  });

  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RaisedButton(
        child: child,
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
      height: height,
    );
  }
}
