import 'package:bpp_shop/screens/Demo/ClipPath.dart';
import 'package:bpp_shop/screens/home_demo.dart';
import 'package:bpp_shop/screens/image_registration.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SellerRegistration extends StatefulWidget {
  const SellerRegistration({super.key});

  @override
  State<SellerRegistration> createState() => _SellerRegistrationState();
}

class _SellerRegistrationState extends State<SellerRegistration> {
  final List<String> items = [
    'Dhaka',
    'Shylet',
    'Ctg',
    'Khulna',
  ];
  String? selectedValue;

  //Validation:
  var _formKey = GlobalKey<FormState>();
  bool? isValidate = false;
  String? invalidFirstNName;
  final namePattern = RegExp(r'^[a-zA-Z\s]*$');

  String? number;
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff3f3f3),
      body: Stack(children: [
        //ClipPath(()),
        ClipPath(
          clipper: CustomClipperImage(),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffffffff)),
        ),
        Positioned(
          top: 40,
          right: 10,
          left: 10,
          bottom: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'BPPSHOPSIGN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                //alignment: Alignment.center,
                margin: EdgeInsets.all(2),
                //padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                // color: Colors.white,
                //height: MediaQuery.of(context).size.height * 0.83,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          "Become a Seller ",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Welcome to seller registration',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Divider(
                          color: Colors.black,
                          //thickness: 3,
                          indent: 10,
                          endIndent: 10,
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Seller Info',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("First Name"),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    // validator: (value) {
                                    //   if (value == null || value.isEmpty) {
                                    //     setState(() {
                                    //       invalidFirstNName =
                                    //           'This filed is required';
                                    //       isValidate = false;
                                    //     });
                                    //     return null;
                                    //   }
                                    //   if (value.length > 3) {
                                    //     isValidate = true;
                                    //   } else {
                                    //     //isValidate = true;
                                    //     return null;
                                    //   }
                                    // },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //if (invalidFirstNName != null) SizedBox(height: 4),
                        // Add a small gap for error message
                        // if (invalidFirstNName != null)
                        //   Align(
                        //       alignment: Alignment.centerLeft,
                        //       child: Text(
                        //         invalidFirstNName!,
                        //         style:
                        //             TextStyle(color: Colors.red, fontSize: 12),
                        //       )),

                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("Last Name"),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (namePattern.hasMatch(value!)) {
                                          setState(() {
                                            isValidate = true;
                                          });

                                          //print('Valid name: $value');
                                          return null;
                                        } else {
                                          setState(() {
                                            invalidFirstNName =
                                                'This filed is required';
                                            isValidate = false;
                                          });
                                          return null;
                                        }
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (invalidFirstNName != null)
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                invalidFirstNName!,
                                style:
                                TextStyle(color: Colors.red, fontSize: 12),
                              )),
                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("Email address"),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("Phone Number"),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: TextFormField(
                                    controller: numberController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                    // onChanged: (value) {
                                    //   if (_formKey.currentState!.validate()) {
                                    //     setState(() {
                                    //       number = value;
                                    //     });
                                    //   }
                                    // },
                                    // validator: (value) {
                                    //   if (value!.isEmpty) {
                                    //     return 'Mobile number is required';
                                    //   } else {
                                    //     final RegExp regex =
                                    //     // RegExp(r'^(01|\+880)[1-9][0-9]{9}$');
                                    //     RegExp(r'^(01|\+880)\d{9,13}$');
                                    //
                                    //     if (!regex.hasMatch(value)) {
                                    //       return 'Invalid mobile number';
                                    //     }
                                    //   }
                                    //   return null;
                                    // },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Divider(
                          color: Colors.black,
                          thickness: 3,
                          indent: 8,
                          endIndent: 8,
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("Shop name "),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("District/City"),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: items
                                          .map((String item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedValue,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("Upozilla/Thana"),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: items
                                          .map((String item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedValue,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 40,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text("Area/Word/Union"),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  //width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),

                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        '',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: items
                                          .map((String item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      value: selectedValue,
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedValue = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(5),
                          //padding: EdgeInsets.all(10),
                          height: 70,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue),
                          ),

                          child: TextFormField(
                            maxLines: 4,
                            decoration: InputDecoration(
                                hintMaxLines: 5,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 7),
                                hintText: "Shop address",
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
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        //****************************************
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: MaterialButton(
                            color: Colors.blue,
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              //numberController.clear();
                              //phoneController.clear();
                              // passwordController.clear();
                              if (_formKey.currentState!.validate()) {
                                if (isValidate == true) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ImageRegistration()));
                                }
                              } else {}
                            },
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            height: 45,
                          ),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text("Already Have an account",
                        //         style: TextStyle(fontSize: 16)),
                        //     TextButton(
                        //         onPressed: () {
                        //           Navigator.of(context).push(MaterialPageRoute(
                        //               builder: (context) => HomeDemo()));
                        //         },
                        //         child: Text(
                        //           "LogIn",
                        //           style: TextStyle(fontSize: 18),
                        //         )),
                        //   ],
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ImageRegistration()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}

// Container(
// padding: EdgeInsets.all(10),
// height: 40,
// width: 380,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// border: Border.all(color: Colors.blue),
// ),
// child: Row(
// children: [
// Expanded(flex: 2, child: Text('District/City')),
// VerticalDivider(
// color: Colors.blue,
// indent: 0,
// endIndent: 0,
// width: 9,
// thickness: 5,
// ),
// Expanded(
// flex: 3,
// child: DropdownButtonFormField<String>(
// value: selectedOption,
// items: dropdownOptions.map((String option) {
// return DropdownMenuItem<String>(
// value: option,
// child: Text(option),
// );
// }).toList(),
// decoration: InputDecoration(
// labelText: 'Select an Option',
// border: OutlineInputBorder(),
// ),
// onChanged: (String? newValue) {
// setState(() {
// selectedOption = newValue;
// });
// },
// ),
// ),
// // Expanded(
// //     flex: 2,
// //     child: TextFormField(
// //       decoration: InputDecoration(
// //         border: OutlineInputBorder(
// //           borderSide: BorderSide.none,
// //         ),
// //       ),
// //     )),
// ],
// ),
// ),
//
