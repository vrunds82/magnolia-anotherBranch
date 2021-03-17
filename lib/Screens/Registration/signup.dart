import 'package:flutter/material.dart';
import 'package:magnolia/Custom/Color.dart';
import 'package:magnolia/Custom/CustomRaisedButton.dart';
import 'package:magnolia/Custom/CustomTextFieldSignUp.dart';
import 'package:magnolia/Screens/NavigationDrawer/bottomNavigation.dart';


class SignUp extends StatefulWidget {
  static String route = "SignUp";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String sHeading ="Hello";
  String sSubHeading = "Create an account to continue";
  String sBottomTextLeft ="Already have an account?";
  String sBottomTextRight ="SIGN IN";
  String sSignUpButtonText = "Sign Up";

  String signUpTabFieldName ="NAME";
  String signUpTabFieldFirstName ="FIRST NAME";
  String signUpTabFieldPassword ="PASSWORD";
  String signUpTabFieldPhoneNumber ="PHONE NUMBER";
  String signUpTabFieldBDay ="BIRTHDAY NAME";
  String signUpTabFieldAdd ="ADDRESS";

  TextEditingController name = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 15,),
              Text(sHeading,style: TextStyle(
                color: Green,fontSize: MediaQuery.of(context).size.height*.1
              ),),
                Text(sSubHeading,style: TextStyle(
                    color: Green,fontSize: 17
                ),),
                SizedBox(height: 15,),
                CustomTextFieldSignUp(
                  obscureText: false,
                  fieldText: "Name",
                  controller: name,
                ),

                CustomTextFieldSignUp(
                  obscureText: false,
                  fieldText: "FirstName",
                  controller: firstName,
                ),

                CustomTextFieldSignUp(
                  obscureText: true,
                  fieldText: "Password",
                  controller: password,
                ),
                CustomTextFieldSignUp(
                  obscureText: false,
                  fieldText: "Phone Number",
                  controller: phoneNumber,
                ),

                CustomTextFieldSignUp(
                  obscureText: false,
                  fieldText: "Age",
                  controller: age,
                ),
                CustomTextFieldSignUp(
                  obscureText: false, fieldText: "Address",
                  controller: address,
                ),

                SizedBox(height: 15,),
                Container(width: 150,
                  child: CustomRaisedButton(
                    click: (){
                      Navigator.of(context).pushNamed(CustomBottomNavigationBar.route);
                    },
                    buttonText: sSignUpButtonText,
                    buttonTextColor: White,
                    buttonBg: Green,

                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Row(
                    children: [
                      Text(sBottomTextLeft,style: TextStyle(
                          color: Grey,fontSize: 12
                      ),),
                      Spacer(),
                      Text(sBottomTextRight,style: TextStyle(
                          color: Black,fontSize: 13, decoration: TextDecoration.underline,
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
