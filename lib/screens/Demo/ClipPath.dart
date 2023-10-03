import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Clip Demo')),
        ),
        body: ClipDemo()
      ),
    );
  }
}
class ClipDemo extends StatefulWidget {
  const ClipDemo({super.key});

  @override
  State<ClipDemo> createState() => _ClipDemoState();
}

class _ClipDemoState extends State<ClipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ClipPath(
            clipper:CustomClipperImage() ,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}



class CustomClipperImage extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();

    //kite draw

    // path.moveTo(size.width * 0.5, 0);
    // path.lineTo(size.width *0.3, size.height*0.3 );
    // path.lineTo(size.width *0.5, size.height*0.6 );
    // path.lineTo(size.width *0.4, size.height*0.7 );
    // path.lineTo(size.width *0.6, size.height*0.7 );
    // path.lineTo(size.width *0.5, size.height*0.6 );
    // path.lineTo(size.width *0.7, size.height*0.3 );
    //End Kite

    path.moveTo(size.width * 0.5, -size.height*0.1);
    path.lineTo(-size.width*0.05, size.height);
    path.lineTo(size.width+60 , size.height*0.4 );




    //path.moveTo(size.width * 0.7, 0);

    //path.lineTo(size.width *0.4, size.height*0.7 );


    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;

}

//*********** ErrormsgShow *********////

// CustomTextFormFiled2(
// containerText: 'First name',
// editingController: firstNameController,
// keyboardType: TextInputType.text,
// textFormFiledValidator: (value) {
// if (value == null || value.isEmpty) {
// setState(() {
// invalidFirstName= 'This filed is required';
// isValidated=false;
// });
// return null;
// }else{
// isValidated=true;
// return null;
// }
// },
// onChanged: (value) {
// setState(() {
// invalidFirstName = TextformFiledValidator.validateFirstName(value);
// if(invalidFirstName==null){
// isValidated=true;
// }else{
// isValidated=false;
// }
// // shopNameError = 'This filed must not be empty';
// });
// },
// ),
// if (invalidFirstName!=null)SizedBox(height: 4.h), // Add a small gap for error message
// if (invalidFirstName!=null)
// Align(alignment: Alignment.centerLeft,child: Text(invalidFirstName!, style: TextStyle(color: Colors.red, fontSize: 12.sp,),)),
// SizedBox(height: 8.h),