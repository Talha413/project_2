// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
//import 'package:image/image.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:image/image.dart' as img;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImagePickerScreen(),
    );
  }
}

class ImagePickerScreen extends StatefulWidget {
  @override
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  List<File?> selectedImages = [null, null];
  final picker = ImagePicker();

  Future<void> _pickImage(int index, double expectedAspectRatio) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final File imageFile = File(pickedFile.path);
      final img.Image? image = img.decodeImage(imageFile.readAsBytesSync());

      if (image != null) {
        final double aspectRatio = image.width.toDouble() / image.height.toDouble();
        if (aspectRatio == expectedAspectRatio) {
          setState(() {
            selectedImages[index] = imageFile;
          });
        } else {
          _showAlertDialog(
              'Invalid Aspect Ratio', 'Please select an image with the correct aspect ratio.');
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
      appBar: AppBar(
        title: Text('Image Picker with Aspect Ratio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => _pickImage(0, 1.0), // 1:1 aspect ratio
              child: Container(
                width: 200,
                height: 200,
                color: Colors.grey,
                child: selectedImages[0] != null
                    ? Image.file(selectedImages[0]!)
                    : Icon(Icons.camera_alt, size: 50),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => _pickImage(1, 6.0), // 6:1 aspect ratio
              child: Container(
                width: 600,
                height: 100,
                color: Colors.grey,
                child: selectedImages[1] != null
                    ? Image.file(selectedImages[1]!)
                    : Icon(Icons.camera_alt, size: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




































// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ImagePickerScreen(),
//     );
//   }
// }
//
// class ImagePickerScreen extends StatefulWidget {
//   @override
//   _ImagePickerScreenState createState() => _ImagePickerScreenState();
// }
//
// class _ImagePickerScreenState extends State<ImagePickerScreen> {
//   List<File?> selectedImages = [null, null];
//   final picker = ImagePicker();
//
//   Future<void> _pickImage(int index, double expectedAspectRatio) async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       final File image = File(pickedFile.path);
//       final double aspectRatio = image.width.toDouble() / image.height.toDouble();
//       final imageAspectRatio = image.readAsBytesSync().length;
//       if ((imageAspectRatio / 1000000) == expectedAspectRatio) {
//         setState(() {
//           selectedImages[index] = image;
//         });
//       } else {
//         _showAlertDialog('Invalid Aspect Ratio', 'Please select an image with the correct aspect ratio.');
//       }
//     }
//   }
//
//   void _showAlertDialog(String title, String message) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(message),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker with Aspect Ratio'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             GestureDetector(
//               onTap: () => _pickImage(0, 1.0), // 1:1 aspect ratio
//               child: Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.grey,
//                 child: selectedImages[0] != null
//                     ? Image.file(selectedImages[0]!)
//                     : Icon(Icons.camera_alt, size: 50),
//               ),
//             ),
//             SizedBox(height: 20),
//             GestureDetector(
//               onTap: () => _pickImage(1, 6.0), // 6:1 aspect ratio
//               child: Container(
//                 width: 600,
//                 height: 100,
//                 color: Colors.grey,
//                 child: selectedImages[1] != null
//                     ? Image.file(selectedImages[1]!)
//                     : Icon(Icons.camera_alt, size: 50),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


































// File? _imageFile;
//
// //get img => null;
//
// Future<void> _pickImage() async {
//   final picker = ImagePicker();
//   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
//
//   if (pickedFile != null) {
//     final image = img.decodeImage(File(pickedFile.path).readAsBytesSync());
//
//     if (image != null && image.width / image.height != 6.0) {
//       // showAlert(
//       //   context: context,
//       //   title: "Invalid Aspect Ratio",
//       //   body: "Selected image does not have a 6/1 aspect ratio.",
//       //   actions: [
//       //     AlertAction(
//       //       text: "OK",
//       //       isDefaultAction: true,
//       //     ),
//       //   ],
//       // );
//     } else {
//       setState(() {
//         _imageFile = File(pickedFile.path);
//       });
//     }
//   }





// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text('Live Validation ')),
//         ),
//         body: AspectDemo(),
//       ),
//     );
//   }
// }
//
//
// class AspectDemo extends StatelessWidget {
//   const AspectDemo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyImagesPage(),
//     );
//   }
// }
//
// class MyImagesPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Aspect Ratio Check'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AspectRatioWidget(
//               aspectRatio: 1.0 / 1.0, // 1:1 aspect ratio
//               imageAsset: 'assets/image1.jpg',
//             ),
//             AspectRatioWidget(
//               aspectRatio: 6.0 / 1.0, // 6:1 aspect ratio
//               imageAsset: 'assets/image2.jpg',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AspectRatioWidget extends StatelessWidget {
//   final double aspectRatio;
//   final String imageAsset;
//
//   AspectRatioWidget({
//     required this.aspectRatio,
//     required this.imageAsset,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: aspectRatio,
//       child: Image.asset(
//         imageAsset,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }
//
//
// Future<bool> _checkAspectRatio(String imagePath) async {
//   final image = await decodeImageFromList(File(imagePath).readAsBytesSync());
//   final double aspectRatio = image.width / image.height;
//
//   // Adjust the required aspect ratio as needed
//   final requiredAspectRatio = 1.0/1.0; // Change this to your desired aspect ratio
//
//   return aspectRatio == requiredAspectRatio;
// }
//
// // Future<void> _pickImage() async {
// //   final picker = ImagePicker();
// //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);
// //
// //   if (pickedFile != null) {
// //     final bool aspectRatioMatches = await _checkAspectRatio(pickedFile.path);
// //
// //     if (aspectRatioMatches) {
// //       final croppedFile = await _cropImage(pickedFile.path);
// //       if (croppedFile != null) {
// //         setState(() {
// //           _imageFile = croppedFile;
// //         });
// //       }
// //     } else {
// //       // Display an alert message indicating that the aspect ratio doesn't match.
// //       showDialog(
// //         context: context,
// //         builder: (context) => AlertDialog(
// //           title: Text('Aspect Ratio Mismatch'),
// //           content: Text('The selected image does not match the required aspect ratio.'),
// //           actions: <Widget>[
// //             TextButton(
// //               onPressed: () {
// //                 Navigator.pop(context);
// //               },
// //               child: Text('OK'),
// //             ),
// //           ],
// //         ),
// //       );
// //     }
// //   }
// // }
//
//
