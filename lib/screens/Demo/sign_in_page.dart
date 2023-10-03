import 'dart:ffi';

import 'package:bpp_shop/screens/Demo/Sign_Up_Page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var _formKey = GlobalKey<FormState>();
  bool value = false;
  bool isObseure = false;

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // String? mobileNumber;
  // String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        //height:
        width: double.infinity,

        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'BPPSHOPAC',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 530,
              width: 370,
              //color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text('Sign In ',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Wellcome to seller login',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Divider(
                      color: Colors.black,
                      //thickness: 3,
                      indent: 10,
                      endIndent: 10,
                      height: 30,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('Mobile'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: phoneController,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 7),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  hintText: " Enter Mobile Number ",
                                  //labelText: 'Mobile Number',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ))),
                              keyboardType: TextInputType.number,
                              obscureText: isObseure,
                              // onFieldSubmitted: (value) {
                              //   setState(() {
                              //     mobileNumber = value;
                              //   });
                              // },

                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Number can't be empty";
                                }
                                if (value.length < 11) {
                                  return "Invalid Mobile Number ";
                                }
                              },
                              onEditingComplete: () {
                                if (_formKey.currentState!.validate()) {
                                  print("Successfull");
                                } else {}
                              },

                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('Password'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white70,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 7),
                                  hintText: " Enter Password ",
                                  //labelText: 'Password',
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.red,
                                      ))),
                              keyboardType: TextInputType.visiblePassword,
                              // onFieldSubmitted: (value) {},

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "This filed must not be empty";
                                }
                                return null;
                              },
                              onEditingComplete: () {
                                if (_formKey.currentState!.validate()) {
                                  print("Successfull");
                                } else {}
                              },
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Checkbox(
                                  checkColor: Colors.red,
                                  activeColor: Colors.blue,
                                  value: value,
                                  onChanged: (value) {}),
                            ),
                            Text('Remember Me'),
                          ],
                        ),
                        TextButton(
                            onPressed: () {}, child: Text('Forgot Password?'))
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),

                    MaterialButton(
                      color: Colors.blue,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                        } else {}
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      height: 45,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Become a seller ",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  fontSize: 20)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//
// color: Colors.white,
// child: Column(
//
// children: [
//
// Text('Sign In', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
// SizedBox(
// height: 5,
// ),
// Text("Welcome to seller login"),
//
// Form(
// key: _formKey,
// child: Column(
// children: [
// TextFormField(
// decoration: InputDecoration(labelText: 'Enter mobile number '),
// keyboardType: TextInputType.number,
// onFieldSubmitted: (value){
// setState(() {
// mobileNumber=value;
// });
//
// },
// validator: (value){
//
// }
// ),
// TextFormField(
// decoration: InputDecoration(labelText: 'Enter mobile number '),
// keyboardType: TextInputType.number,
// onFieldSubmitted: (value){
// setState(() {
// mobileNumber=value;
// });
//
// },
// validator: (value){
//
// }
// ),
// TextFormField(
// decoration: InputDecoration(labelText: 'Enter mobile number '),
// keyboardType: TextInputType.number,
// onFieldSubmitted: (value){
// setState(() {
// mobileNumber=value;
// });
//
// },
// validator: (value){
//
// }
// ),
// ],
// ))
//
//
// ],
// ),
// ),
