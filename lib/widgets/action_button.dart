import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onClick;
  const ActionButton({super.key, required this.buttonText, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.06,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xff2A4ADF),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(buttonText, style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}