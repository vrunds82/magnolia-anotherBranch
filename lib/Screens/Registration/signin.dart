import 'package:flutter/material.dart';
import 'package:magnolia/Constant/constants.dart';
import 'package:magnolia/Custom/Color.dart';
import 'package:magnolia/Custom/CustomRaisedButton.dart';
import 'package:magnolia/Custom/CustomTextField.dart';
import 'package:magnolia/Screens/Registration/signup.dart';



class SignIn extends StatefulWidget {
  static String route = "SignIn";
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  String sText1 ="Welcome To";
  String sText2 = "embrassent la vie";
  String  sText3 ="- By Meev";
  String  signInButtonText ="Sign In";
  String password ="Password";
  String phoneNumber ="Enter Your Email";

  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPhoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(

            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Green,
                Green,
                Black
              ],
            ),
          ),
            child: Center(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(height: 35,),
                  Text(sText1,style: TextStyle(
                    fontSize: 22,
                    color: White,

                  )
                  ),
                  //SizedBox(height: 10,),
                  Image.asset(logo,
                    //height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.6,),
                  SizedBox(height: 20,),

                  Center(
                    child: Image.asset(bgLogo,
                      height: MediaQuery.of(context).size.height*0.4,
                      width: MediaQuery.of(context).size.width*.9,),
                  ),

                  SizedBox(height: 10,),
                  Expanded(
                    child: Align(alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right: 25),
                        child: Column(
                          children: [
                            CustomTextFieldData(
                              fieldText: phoneNumber,
                              obscureText: false,
                              controller: controllerPhoneNumber,
                            ),
                        CustomTextFieldData(
                          fieldText: password,
                          obscureText: true,
                          controller: controllerPassword,
                        ),
                            SizedBox(height: 15,),
                            Container(width: 150,
                              child: CustomRaisedButton(
                                click: (){
                                  Navigator.of(context).pushNamed(SignUp.route);
                                  print("Hii");

                                },
                                buttonText: signInButtonText,
                                buttonTextColor: Green,
                                buttonBg: White,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(onTap: (){
                    Navigator.of(context).pushNamed(SignUp.route);

                  },
                    child: Text("Create Account?",
                    style: TextStyle(
                      color: White,fontSize: 16
                    ),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
