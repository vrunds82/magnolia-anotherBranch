import 'package:flutter/material.dart';

import 'Color.dart';


class CustomTextFieldData extends StatelessWidget {

 final String fieldText;
 final TextEditingController controller;
  final bool obscureText, enabled;
  final bool keyboardtype;



 CustomTextFieldData({this.fieldText, this.controller, this.obscureText,
     this.enabled,this.keyboardtype,});

 @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Container(decoration: BoxDecoration(

      ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
            child: Row(
              children: [
                Expanded(child: Container(
                    child: TextField(obscureText:obscureText ,

                      controller: controller,
                      style: TextStyle(
                        fontSize: 14,color: White
                    ),
                      decoration: InputDecoration(
                        hintText: fieldText,
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: White
                        ),
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: White,width: 2
                            )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: White,width: 2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: White,width: 2),
                        ),

                        //border: InputBorder.none,
                        //focusedBorder: InputBorder.none,
                        //enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        //disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 0, bottom: 0, top: 14, right: 0),
                      ),
                    ))),


              ],
            ),
          )
      ),
    );
  }
}




