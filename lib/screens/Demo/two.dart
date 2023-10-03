import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {

  List<String> dropdownlist = ['Dhaka', 'Ctg', 'Shylet'];
  String? selectedOption = "";
  //var _value="-1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Become a Seller "),
          Text('Welcome to seller registration'),
          Divider(
            color: Colors.black,
            //thickness: 3,
            indent: 10,
            endIndent: 10,
            height: 20,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text('Seller Info')),
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('First name ')),
                VerticalDivider(
                  color: Colors.blue,
                  indent: 0,
                  endIndent: 0,
                  width: 9,
                  thickness: 5,
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('Last name')),
                VerticalDivider(
                  color: Colors.blue,
                  indent: 0,
                  endIndent: 0,
                  width: 9,
                  thickness: 5,
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('Email address ')),
                VerticalDivider(
                  color: Colors.blue,
                  indent: 0,
                  endIndent: 0,
                  width: 9,
                  thickness: 5,
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('Phone Number')),
                VerticalDivider(
                  color: Colors.blue,
                  indent: 0,
                  endIndent: 0,
                  width: 9,
                  thickness: 5,
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 3,
            indent: 10,
            endIndent: 10,
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('Shop name')),
                VerticalDivider(
                  color: Colors.blue,
                  indent: 0,
                  endIndent: 0,
                  width: 9,
                  thickness: 5,
                ),
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    )),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('District/City')),
                VerticalDivider(
                  color: Colors.blue,
                  indent: 0,
                  endIndent: 0,
                  width: 9,
                  thickness: 5,
                ),
                Expanded(
                    flex: 3,
                    child: DropdownButtonFormField(
                      value:selectedOption,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )),
                      items: dropdownlist.map((String option) {
                              return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                              );}).toList(),
                      onChanged: (v) {
                        setState(() {
                          selectedOption=v;
                        });
                      },
                    )),

              ],
            ),
          ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   height: 40,
          //   width: 380,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     border: Border.all(color: Colors.blue),
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(flex: 2, child: Text('Upozilla/Thana')),
          //       VerticalDivider(
          //         color: Colors.blue,
          //         indent: 0,
          //         endIndent: 0,
          //         width: 9,
          //         thickness: 5,
          //       ),
          //       Expanded(
          //           flex: 3,
          //           child: DropdownButtonFormField(
          //             value: _value,
          //             decoration: InputDecoration(
          //                 border: OutlineInputBorder(
          //                   borderSide: BorderSide.none,
          //                 )),
          //             items: [
          //               DropdownMenuItem(
          //                 child: Text('Select Any'),
          //                 value: '-1',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Dhaka'),
          //                 value: '1',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Khulna'),
          //                 value: '2',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Shylet'),
          //                 value: '3',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Chattagram'),
          //                 value: '4',
          //               ),
          //             ],
          //             onChanged: (v) {
          //               setState(() {
          //                 v=_value;
          //               });
          //             },
          //           )),
          //       // Expanded(
          //       //     flex: 2,
          //       //     child: TextFormField(
          //       //       decoration: InputDecoration(
          //       //         border: OutlineInputBorder(
          //       //           borderSide: BorderSide.none,
          //       //         ),
          //       //       ),
          //       //     )),
          //     ],
          //   ),
          // ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   height: 40,
          //   width: 380,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     border: Border.all(color: Colors.blue),
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(flex: 2, child: Text('Area/word/union')),
          //       VerticalDivider(
          //         color: Colors.blue,
          //         indent: 0,
          //         endIndent: 0,
          //         width: 9,
          //         thickness: 5,
          //       ),
          //       Expanded(
          //           flex: 3,
          //           child: DropdownButtonFormField(
          //             value: _value,
          //             decoration: InputDecoration(
          //                 border: OutlineInputBorder(
          //                   borderSide: BorderSide.none,
          //                 )),
          //             items: [
          //               DropdownMenuItem(
          //                 child: Text('Select Any'),
          //                 value: '-1',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Dhaka'),
          //                 value: '1',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Khulna'),
          //                 value: '2',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Shylet'),
          //                 value: '3',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Chattagram'),
          //                 value: '4',
          //               ),
          //             ],
          //             onChanged: (v) {
          //               setState(() {});
          //             },
          //           )),
          //       // Expanded(
          //       //     flex: 2,
          //       //     child: TextFormField(
          //       //       decoration: InputDecoration(
          //       //         border: OutlineInputBorder(
          //       //           borderSide: BorderSide.none,
          //       //         ),
          //       //       ),
          //       //     )),
          //     ],
          //   ),
          // ),
          TextFormField(
            maxLines: 3,

            decoration: InputDecoration(

                hintMaxLines: 5,
                contentPadding: EdgeInsets.symmetric(horizontal: 7),
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
                    ))

            ),
          ),
          // Container(
          //   padding: EdgeInsets.all(10),
          //   height: 40,
          //   width: 380,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     border: Border.all(color: Colors.blue),
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(flex: 2, child: Text('Area/Word/Union')),
          //       VerticalDivider(
          //         color: Colors.blue,
          //         indent: 0,
          //         endIndent: 0,
          //         width: 12,
          //         thickness: 5,
          //       ),
          //       Expanded(
          //           flex: 3,
          //           child: DropdownButtonFormField(
          //             value: _value,
          //             decoration: InputDecoration(
          //                 border: OutlineInputBorder(
          //               borderSide: BorderSide.none,
          //             )),
          //             items: [
          //               DropdownMenuItem(
          //                 child: Text('Select Any'),
          //                 value: '-1',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Dhaka'),
          //                 value: '1',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Khulna'),
          //                 value: '2',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Shylet'),
          //                 value: '3',
          //               ),
          //               DropdownMenuItem(
          //                 child: Text('Chattagram'),
          //                 value: '4',
          //               ),
          //             ],
          //             onChanged: (v) {
          //               setState(() {});
          //             },
          //           )),
          //       // Expanded(
          //       //     flex: 2,
          //       //     child: TextFormField(
          //       //       decoration: InputDecoration(
          //       //         border: OutlineInputBorder(
          //       //           borderSide: BorderSide.none,
          //       //         ),
          //       //       ),
          //       //     )),
          //     ],
          //   ),
          // ),

          //****************************************

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already Have an account",style:TextStyle(fontSize: 14)),
              TextButton(onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => HomeDemo()));
              }, child: Text("LogIn",style: TextStyle(fontSize: 16),)),
            ],
          )
        ],
      ),
    );
  }
}
