import 'package:flutter/material.dart';


class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String fieldName;
  final String fieldLabel;
  final TextInputType keyboardType;
  final bool? isPassword;
  final bool? showPassword;
  final VoidCallback? onIconClick;
  

  const CustomTextfield({super.key, required this.controller, required this.fieldName, required this.fieldLabel, required this.keyboardType,  this.isPassword=false, this.showPassword = false, this.onIconClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fieldName, style: TextStyle(
          fontWeight: FontWeight.w600
        ),),
        SizedBox(height: 10,),
        TextFormField(
          obscureText: showPassword!?true:false,
          keyboardType: keyboardType,
          
          controller: controller,
          
          decoration: InputDecoration(
            suffixIcon:  isPassword!? IconButton( icon: Icon(showPassword!? Icons.visibility: Icons.visibility_off, color: Color(0xff2A4ADF),), onPressed: onIconClick): null,
            label: Text(fieldLabel),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15
            )
          ),
          
        
        
        
        ),
      ],
    );
  }
}