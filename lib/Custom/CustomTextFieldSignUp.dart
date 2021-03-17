import 'package:flutter/material.dart';

import 'Color.dart';


class CustomTextFieldSignUp extends StatelessWidget {

  final String fieldText;
  final TextEditingController controller;
  final bool obscureText, enabled;


  CustomTextFieldSignUp({this.fieldText, this.controller, this.obscureText,
    this.enabled});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
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
                          fontSize: 14
                      ),
                      decoration: InputDecoration(
                        hintText: fieldText,
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Grey
                        ),
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: Grey,width: 1.3
                            )
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Grey,width: 1.3),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Grey,width: 1.3),
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




