import 'dart:io';
import 'package:bpp_shop/screens/Demo/ClipPath.dart';
import 'package:bpp_shop/screens/home_demo.dart';
import 'package:bpp_shop/screens/Demo/seller_registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:image/image.dart' as img;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageTest()
    );
  }
}



class ImageTest extends StatefulWidget {
  const ImageTest({super.key});

  @override
  State<ImageTest> createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {


  bool? ischecked = false;
  bool value = false;
  File? _imagePath;
  File? _logoPath;

  String? _selectedFileName;
  String? _selectedLogoName;

  List<File?> selectedImages = [null, null];

  final picker = ImagePicker();

  Future<void> _pickImage( double expectedAspectRatio) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final File imageFile = File(pickedFile.path);
      final img.Image? image = img.decodeImage(imageFile.readAsBytesSync());

      if (image != null) {
        final double aspectRatio = image.width.toDouble() / image.height.toDouble();
        if (aspectRatio == expectedAspectRatio) {
          setState(() {
             _imagePath = imageFile;
            _selectedFileName = pickedFile.name;
          });
        } else {
          _showAlertDialog(
              'Invalid Aspect Ratio', 'Please select an image with the  aspect ratio of "1".');
        }
      } else {
        _showAlertDialog('Invalid Image', 'The selected file is not a valid image.');
      }
    }
  }

  Future<void> _pickLogo( double expectedAspectRatio) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final File imageFile = File(pickedFile.path);
      final img.Image? image = img.decodeImage(imageFile.readAsBytesSync());

      if (image != null) {
        final double aspectRatio = image.width.toDouble() / image.height.toDouble();
        if (aspectRatio == expectedAspectRatio) {
          setState(() {
            _logoPath = imageFile;
            _selectedLogoName = pickedFile.name;
          });
        } else {
          _showAlertDialog(
              'Invalid Aspect Ratio', 'Please select an image with the  aspect ratio of "6".');
        }
      } else {
        _showAlertDialog('Invalid Image', 'The selected file is not a valid image.');
      }
    }
  }



  void _showAlertDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff3f3f3),
      body: Stack(children: [
        //ClipPath(()),
        ClipPath(
          clipper: CustomClipperImage(),
          child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Color(0xffffffff)),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'BPPSHOP_Image',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                //alignment: Alignment.center,
                margin:
                EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                //padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                // color: Colors.white,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.82,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Become a Seller ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(
                        'Welcome to seller registration',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.black,
                        //thickness: 3,
                        indent: 10,
                        endIndent: 10,
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: _imagePath != null
                                ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(
                                _imagePath!,
                                //height: 400,
                                //width: 400,
                                fit: BoxFit.cover,
                              ),
                            )
                                : Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFBr35nsGltX_wIDUpo4TCQCXGHsnU1P9qUQ&usqp=CAU"),
                          ),
                          Container(
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 4),
                                  width: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text(_selectedFileName == null
                                      ? 'Select File'
                                      : '${_selectedFileName}'),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(200, 30),
                                      backgroundColor: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                    ),
                                    onPressed: () =>
                                    {
                                      // getImage(
                                      //   ImageSource.gallery,
                                      // ),
                                      _pickImage(1.0),
                                    },
                                    child: Text('Browse'))
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blue),
                        ),
                        height: 150,
                        width: double.infinity,
                        child: _logoPath != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            _logoPath!,
                            //height: 400,
                            //width: 400,
                            fit: BoxFit.cover,
                          ),
                        )
                            : Image.network(
                          "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.blue),
                        ),
                        child: Text(_selectedLogoName == null
                            ? 'Upload Banned or Sign Bored Picture'
                            : '${_selectedLogoName}'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(140, 30),
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () =>
                            {
                              // getLogo(ImageSource.gallery),
                              _pickLogo(6.0),
                            },
                            child: Text('Browse')),
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
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
                              flex: 3,
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
                                child: Text("Password"),
                              ),
                            ),
                            Expanded(
                              flex: 4,
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
                        margin: EdgeInsets.all(3),
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
                              flex: 3,
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
                                child: Text("Retype Password"),
                              ),
                            ),
                            Expanded(
                              flex: 4,
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
                      Row(
                        children: [
                          Checkbox(
                              value: ischecked,
                              onChanged: (value) {
                                setState(() {
                                  ischecked = value;
                                });
                              }),
                          // Theme(
                          //   data: Theme.of(context).copyWith(
                          //     unselectedWidgetColor: Colors.white,
                          //   ),
                          //   child: Checkbox(
                          //       checkColor: Colors.red,
                          //       activeColor: Colors.blue,
                          //       value: value,
                          //       onChanged: (value) {}),
                          // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                " I agree to your  ",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SellerRegistration()));
                                  },
                                  child: Text(
                                    'Terms and Condition',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline),
                                  ))
                            ],
                          ),
                          //Text('I agree to Your Terms and Condition'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            color: Colors.grey,
                            minWidth: 120,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      SellerRegistration()));
                            },
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            height: 40,
                          ),
                          MaterialButton(
                            color: Colors.blue,
                            minWidth: 140,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            onPressed: () {
                              //phoneController.clear();
                              // passwordController.clear();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => HomeDemo()));
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            height: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                                        SellerRegistration()));
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
            ],
          ),
        ),
      ]),
    );
  }
}

// import 'dart:io';
// import 'package:bpp_shop/screens/Demo/ClipPath.dart';
// import 'package:bpp_shop/screens/home_demo.dart';
// import 'package:bpp_shop/screens/Demo/seller_registration.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path_provider/path_provider.dart';
// //import 'package:rflutter_alert/rflutter_alert.dart';
//
// class ImageRegistration extends StatefulWidget {
//   const ImageRegistration({super.key});
//
//   @override
//   State<ImageRegistration> createState() => _ImageRegistrationState();
// }
//
// class _ImageRegistrationState extends State<ImageRegistration> {
//
//
//   bool? ischecked = false;
//   bool value = false;
//   File? _imagePath;
//   File? _logoPath;
//
//   String? _selectedFileName;
//   String? _selectedLogoName;
//
//
//   Future getImage(ImageSource source) async {
//     final _image = await ImagePicker().pickImage(source: source,);
//     if (_image == null) return;
//     final temporaryImage = File(_image.path);
//     setState(() {
//       _imagePath = temporaryImage;
//       _selectedFileName = _image.name;
//     });
//   }
//   Future getLogo(ImageSource source) async {
//     final _logo = await ImagePicker().pickImage(source: source);
//     if (_logo == null) return;
//     final temporaryImage = File(_logo.path);
//     setState(() {
//       _logoPath = temporaryImage;
//       _selectedLogoName = _logo.name;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Color(0xfff3f3f3),
//       body: Stack(children: [
//         //ClipPath(()),
//         ClipPath(
//           clipper: CustomClipperImage(),
//           child: Container(
//               height: MediaQuery
//                   .of(context)
//                   .size
//                   .height,
//               width: MediaQuery
//                   .of(context)
//                   .size
//                   .width,
//               color: Color(0xffffffff)),
//         ),
//         Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 'BPPSHOP_Image',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 3,
//               ),
//               Container(
//                 //alignment: Alignment.center,
//                 margin:
//                 EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
//                 //padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.white,
//                 ),
//                 // color: Colors.white,
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height * 0.82,
//                 width: MediaQuery
//                     .of(context)
//                     .size
//                     .width,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text("Become a Seller ",
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold)),
//                       Text(
//                         'Welcome to seller registration',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       Divider(
//                         color: Colors.black,
//                         //thickness: 3,
//                         indent: 10,
//                         endIndent: 10,
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(1),
//                             height: 120,
//                             width: 120,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(color: Colors.blue),
//                             ),
//                             child: _imagePath != null
//                                 ? ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.file(
//                                 _imagePath!,
//                                 //height: 400,
//                                 //width: 400,
//                                 fit: BoxFit.cover,
//                               ),
//                             )
//                                 : Image.network(
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFBr35nsGltX_wIDUpo4TCQCXGHsnU1P9qUQ&usqp=CAU"),
//                           ),
//                           Container(
//                             height: 120,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment
//                                   .spaceBetween,
//                               children: [
//                                 Container(
//                                   alignment: Alignment.center,
//                                   padding: EdgeInsets.symmetric(
//                                       vertical: 8, horizontal: 4),
//                                   width: 220,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(5),
//                                     border: Border.all(color: Colors.blue),
//                                   ),
//                                   child: Text(_selectedFileName == null
//                                       ? 'Select File'
//                                       : '${_selectedFileName}'),
//                                 ),
//                                 ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       fixedSize: Size(200, 30),
//                                       backgroundColor: Colors.grey,
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(
//                                             10),
//                                       ),
//                                     ),
//                                     onPressed: () =>
//                                     {
//                                       getImage(
//                                         ImageSource.gallery,
//                                       ),
//                                     },
//                                     child: Text('Browse'))
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(1),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(color: Colors.blue),
//                         ),
//                         height: 150,
//                         width: double.infinity,
//                         child: _logoPath != null
//                             ? ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.file(
//                             _logoPath!,
//                             //height: 400,
//                             //width: 400,
//                             fit: BoxFit.cover,
//                           ),
//                         )
//                             : Image.network(
//                           "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         alignment: Alignment.center,
//                         padding:
//                         EdgeInsets.symmetric(vertical: 8, horizontal: 4),
//                         width: 400,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           border: Border.all(color: Colors.blue),
//                         ),
//                         child: Text(_selectedLogoName == null
//                             ? 'Upload Banned or Sign Bored Picture'
//                             : '${_selectedLogoName}'),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               fixedSize: Size(140, 30),
//                               backgroundColor: Colors.grey,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                             onPressed: () =>
//                             {
//                               getLogo(ImageSource.gallery),
//                             },
//                             child: Text('Browse')),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(3),
//                         //padding: EdgeInsets.all(10),
//                         height: 40,
//                         width: 380,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(color: Colors.blue),
//                         ),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               flex: 3,
//                               child: Container(
//                                 padding: EdgeInsets.all(10),
//                                 height: 40,
//                                 //width: 80,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10),
//                                     bottomLeft: Radius.circular(10),
//                                   ),
//                                   border: Border.all(color: Colors.blue),
//                                 ),
//                                 child: Text("Password"),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 4,
//                               child: Container(
//                                 padding: EdgeInsets.all(10),
//                                 height: 40,
//                                 //width: 300,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(10),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                   border: Border.all(color: Colors.blue),
//                                 ),
//
//                                 child: TextFormField(
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderSide: BorderSide.none,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(3),
//                         //padding: EdgeInsets.all(10),
//                         height: 40,
//                         width: 380,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(color: Colors.blue),
//                         ),
//                         child: Row(
//                           children: [
//                             Expanded(
//                               flex: 3,
//                               child: Container(
//                                 padding: EdgeInsets.all(10),
//                                 height: 40,
//                                 //width: 80,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10),
//                                     bottomLeft: Radius.circular(10),
//                                   ),
//                                   border: Border.all(color: Colors.blue),
//                                 ),
//                                 child: Text("Retype Password"),
//                               ),
//                             ),
//                             Expanded(
//                               flex: 4,
//                               child: Container(
//                                 padding: EdgeInsets.all(10),
//                                 height: 40,
//                                 //width: 300,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(10),
//                                     bottomRight: Radius.circular(10),
//                                   ),
//                                   border: Border.all(color: Colors.blue),
//                                 ),
//
//                                 child: TextFormField(
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderSide: BorderSide.none,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Checkbox(
//                               value: ischecked,
//                               onChanged: (value) {
//                                 setState(() {
//                                   ischecked = value;
//                                 });
//                               }),
//                           // Theme(
//                           //   data: Theme.of(context).copyWith(
                          //     unselectedWidgetColor: Colors.white,
                          //   ),
                          //   child: Checkbox(
                          //       checkColor: Colors.red,
                          //       activeColor: Colors.blue,
                          //       value: value,
                          //       onChanged: (value) {}),
                          // ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 " I agree to your  ",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black),
//                               ),
//                               InkWell(
//                                   onTap: () {
//                                     Navigator.of(context).push(
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 SellerRegistration()));
//                                   },
//                                   child: Text(
//                                     'Terms and Condition',
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.blue,
//                                         decoration: TextDecoration.underline),
//                                   ))
//                             ],
//                           ),
//                           //Text('I agree to Your Terms and Condition'),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           MaterialButton(
//                             color: Colors.grey,
//                             minWidth: 120,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10)),
//                             onPressed: () {
//                               Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) =>
//                                       SellerRegistration()));
//                             },
//                             child: Text(
//                               "Back",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w700),
//                             ),
//                             height: 40,
//                           ),
//                           MaterialButton(
//                             color: Colors.blue,
//                             minWidth: 140,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10)),
//                             onPressed: () {
//                               //phoneController.clear();
//                               // passwordController.clear();
//                               Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => HomeDemo()));
//                             },
//                             child: Text(
//                               "Submit",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w700),
//                             ),
//                             height: 40,
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Already have an account ",
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           InkWell(
//                               onTap: () {
//                                 Navigator.of(context).push(MaterialPageRoute(
//                                     builder: (context) =>
//                                         SellerRegistration()));
//                               },
//                               child: Text(
//                                 'Login',
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.blue,
//                                     decoration: TextDecoration.underline),
//                               ))
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }