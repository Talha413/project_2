import 'package:bpp_shop/helper/textform_filed_validator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String? _name;
  String? _email;
  String? _mobile;
  String? _nameError;
  String? _mobileError;
  String? _emailError;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  //bool isValidated = false;

  String? validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  // String? validateMobile(String value) {
  //
  //   if (value.length != 10)
  //     return 'Mobile Number must be of 10 digit';
  //   else
  //     return null;
  // }

  String? validateEmail(String value) {
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState?.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,

              //autovalidateMode: AutovalidateMode.onUserInteraction,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }

// Here is our Form UI
  Widget FormUI() {
    return Column(
      children: <Widget>[
        TextFormField(
          autocorrect: _autoValidate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: nameController,
          decoration: const InputDecoration(labelText: 'Name'),
          keyboardType: TextInputType.text,
          validator: (value) {
            return value = validateName('');
          },

          onSaved: (val) {
            _name = val;
          },
          // onChanged: (){
          //
          // },
        ),
        TextFormField(
          //autocorrect: _autoValidate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: phoneController,
          decoration: const InputDecoration(labelText: 'Mobile'),
          keyboardType: TextInputType.phone,
          validator: (value) {
            return value = TextFormFiledValidator.validateMobile('');
          },
          onSaved: (val) {
            _mobile = val;
            //_validateInputs();
          },
          // onChanged: (val){
          //   _mobile=val;
          //   setState(() {
          //     _validateInputs();
          //   });
          // },
          onChanged: (value) {
            // setState(() {
            //   if (_formKey.currentState!.validate()) {
            //     TextFormFiledValidator.validateEmail(value);
            //     isValidated = true;
            //   } else {
            //     isValidated = false;
            //   }
            //
            // }
            setState(() {
              // _validateInputs();
              _mobileError = TextFormFiledValidator.validateMobile(value);
              if (_mobileError == null) {
                _autoValidate = true;
              } else {
                _autoValidate = false;
              }
            });
          },












        ),
        TextFormField(
          autocorrect: _autoValidate,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: emailController,
          decoration: const InputDecoration(labelText: 'Email'),
          keyboardType: TextInputType.emailAddress,
          validator:(value)=> value = TextFormFiledValidator.validateEmail(''),
          onSaved: (val) {
            _email = val;
            _validateInputs();
          },

          onChanged: (value) {
            // setState(() {
            //   if (_formKey.currentState!.validate()) {
            //     TextFormFiledValidator.validateEmail(value);
            //     isValidated = true;
            //   } else {
            //     isValidated = false;
            //   }
            //
            // }
            setState(() {
              _emailError = TextFormFiledValidator.validateEmail(value);
              if (_emailError == null) {
                _autoValidate = true;
              } else {
                _autoValidate = false;
              }
            });
          },
        ),
        SizedBox(
          height: 10.0,
        ),
        // new RaisedButton(
        //   onPressed: _validateInputs,
        //   child: new Text('Validate'),
        // )
        TextButton(onPressed: _validateInputs, child: Text("Validate"))
      ],
    );
  }
}
