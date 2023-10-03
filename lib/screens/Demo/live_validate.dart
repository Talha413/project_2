
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
//       home: MyForm(),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   TextEditingController _firstNameController = TextEditingController();
//   TextEditingController _lastNameController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//
//   FocusNode ?_currentFocus;
//   Map<TextEditingController, String> _fieldErrors = {};
//
//   @override
//   void initState() {
//     super.initState();
//     _currentFocus = _firstNameController as FocusNode;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Single Field Interaction Validation'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             TextFormField(
//               controller: _firstNameController,
//               focusNode: _currentFocus == _firstNameController
//                   ? FocusNode()
//                   : null,
//               decoration: InputDecoration(labelText: 'First Name'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your first name';
//                 }
//                 if (!isValidName(value)) {
//                   return 'Invalid name';
//                 }
//                 return null;
//               },
//               onEditingComplete: () {
//                 _changeFocus(_lastNameController);
//               },
//             ),
//             if (_currentFocus == _firstNameController &&
//                 _fieldErrors.containsKey(_firstNameController))
//               Text(
//                 _fieldErrors[_firstNameController]!,
//                 style: TextStyle(color: Colors.red),
//               ),
//             TextFormField(
//               controller: _lastNameController,
//               focusNode: _currentFocus == _lastNameController ? FocusNode() : null,
//               decoration: InputDecoration(labelText: 'Last Name'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your last name';
//                 }
//                 if (!isValidName(value)) {
//                   return 'Invalid name';
//                 }
//                 return null;
//               },
//               onEditingComplete: () {
//                 _changeFocus(_phoneController);
//               },
//             ),
//             if (_currentFocus == _lastNameController &&
//                 _fieldErrors.containsKey(_lastNameController))
//               Text(
//                 _fieldErrors[_lastNameController]!,
//                 style: TextStyle(color: Colors.red),
//               ),
//             TextFormField(
//               controller: _phoneController,
//               focusNode: _currentFocus == _phoneController ? FocusNode() : null,
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(labelText: 'Phone Number'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your phone number';
//                 }
//                 if (!isValidPhoneNumber(value)) {
//                   return 'Invalid phone number';
//                 }
//                 return null;
//               },
//               onEditingComplete: () {
//                 _changeFocus(_emailController);
//               },
//             ),
//             if (_currentFocus == _phoneController &&
//                 _fieldErrors.containsKey(_phoneController))
//               Text(
//                 _fieldErrors[_phoneController]!,
//                 style: TextStyle(color: Colors.red),
//               ),
//             TextFormField(
//               controller: _emailController,
//               focusNode: _currentFocus == _emailController ? FocusNode() : null,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(labelText: 'Email'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email address';
//                 }
//                 if (!isValidEmail(value)) {
//                   return 'Invalid email address';
//                 }
//                 return null;
//               },
//             ),
//             if (_currentFocus == _emailController &&
//                 _fieldErrors.containsKey(_emailController))
//               Text(
//                 _fieldErrors[_emailController]!,
//                 style: TextStyle(color: Colors.red),
//               ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   _fieldErrors.clear(); // Clear previous errors
//                 });
//                 if (_formKey.currentState!.validate()) {
//                   // Form is valid, perform your desired action here
//                 } else {
//                   // Identify the field with the error
//                   for (var controller in _fieldErrors.keys) {
//                     if (controller.text.isEmpty) {
//                       // Set the error message for the empty field
//                       _fieldErrors[controller] = 'Please enter a value';
//                     }
//                   }
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   bool isValidName(String name) {
//     final nameRegex = RegExp(r'^[A-Za-z]+(?: [A-Za-z]+)*$');
//     return nameRegex.hasMatch(name);
//   }
//
//   bool isValidPhoneNumber(String phone) {
//     final phoneRegex = RegExp(r'^[0-9]{10}$');
//     return phoneRegex.hasMatch(phone);
//   }
//
//   bool isValidEmail(String email) {
//     final emailRegex =
//     RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
//
//   void _changeFocus(TextEditingController nextController) {
//     setState(() {
//       _currentFocus = nextController as FocusNode;
//     });
//   }
// }


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
//       home: MyForm(),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   TextEditingController _firstNameController = TextEditingController();
//   TextEditingController _lastNameController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//
//   FocusNode ?_currentFocus;
//   Map<TextEditingController, bool> _fieldValidations = {};
//
//   @override
//   void initState() {
//     super.initState();
//     _currentFocus != _firstNameController;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Interactive Form Validation'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             TextFormField(
//               controller: _firstNameController,
//               focusNode: _currentFocus == _firstNameController
//                   ? FocusNode()
//                   : null,
//               decoration: InputDecoration(labelText: 'First Name'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your first name';
//                 }
//                 if (!isValidName(value)) {
//                   return 'Invalid name';
//                 }
//                 return null;
//               },
//               onChanged: (value) {
//                 _fieldValidations[_firstNameController] =
//                     _formKey.currentState!.validate();
//                 setState(() {});
//               },
//               onEditingComplete: () {
//                 _changeFocus(_lastNameController);
//               },
//             ),
//             if (_fieldValidations[_firstNameController] != null &&
//                 !_fieldValidations[_firstNameController]!)
//               Text(
//                 'Invalid name',
//                 style: TextStyle(color: Colors.red),
//               ),
//             TextFormField(
//               controller: _lastNameController,
//               focusNode: _currentFocus == _lastNameController ? FocusNode() : null,
//               decoration: InputDecoration(labelText: 'Last Name'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your last name';
//                 }
//                 if (!isValidName(value)) {
//                   return 'Invalid name';
//                 }
//                 return null;
//               },
//               onChanged: (value) {
//                 _fieldValidations[_lastNameController] =
//                     _formKey.currentState!.validate();
//                 setState(() {});
//               },
//               onEditingComplete: () {
//                 _changeFocus(_phoneController);
//               },
//             ),
//             if (_fieldValidations[_lastNameController] != null &&
//                 !_fieldValidations[_lastNameController]!)
//               Text(
//                 'Invalid name',
//                 style: TextStyle(color: Colors.red),
//               ),
//             TextFormField(
//               controller: _phoneController,
//               focusNode: _currentFocus == _phoneController ? FocusNode() : null,
//               keyboardType: TextInputType.phone,
//               decoration: InputDecoration(labelText: 'Phone Number'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your phone number';
//                 }
//                 if (!isValidPhoneNumber(value)) {
//                   return 'Invalid phone number';
//                 }
//                 return null;
//               },
//               onChanged: (value) {
//                 _fieldValidations[_phoneController] =
//                     _formKey.currentState!.validate();
//                 setState(() {});
//               },
//               onEditingComplete: () {
//                 _changeFocus(_emailController);
//               },
//             ),
//             if (_fieldValidations[_phoneController] != null &&
//                 !_fieldValidations[_phoneController]!)
//               Text(
//                 'Invalid phone number',
//                 style: TextStyle(color: Colors.red),
//               ),
//             TextFormField(
//               controller: _emailController,
//               focusNode: _currentFocus == _emailController ? FocusNode() : null,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(labelText: 'Email'),
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email address';
//                 }
//                 if (!isValidEmail(value)) {
//                   return 'Invalid email address';
//                 }
//                 return null;
//               },
//               onChanged: (value) {
//                 _fieldValidations[_emailController] =
//                     _formKey.currentState!.validate();
//                 setState(() {});
//               },
//             ),
//             if (_fieldValidations[_emailController] != null &&
//                 !_fieldValidations[_emailController]!)
//               Text(
//                 'Invalid email address',
//                 style: TextStyle(color: Colors.red),
//               ),
//             ElevatedButton(
//               onPressed: () {
//                 _currentFocus = null;
//                 setState(() {});
//                 if (_formKey.currentState!.validate()) {
//                   // Form is valid, perform your desired action here
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   bool isValidName(String name) {
//     final nameRegex = RegExp(r'^[A-Za-z]+(?: [A-Za-z]+)*$');
//     return nameRegex.hasMatch(name);
//   }
//
//   bool isValidPhoneNumber(String phone) {
//     final phoneRegex = RegExp(r'^[0-9]{10}$');
//     return phoneRegex.hasMatch(phone);
//   }
//
//   bool isValidEmail(String email) {
//     final emailRegex =
//     RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
//
//   void _changeFocus(TextEditingController nextController) {
//     setState(() {
//       _currentFocus = nextController as FocusNode?;
//     });
//   }
// }

















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
//         body: MyForm(),
//       ),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   String name = '';
//   String email = '';
//   String phone = '';
//
//   String nameError = '';
//   String emailError = '';
//   String phoneError = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   name = value;
//                   nameError = '';
//                 });
//                 _validateNameFields();
//               },
//             ),
//             Text(nameError, style: TextStyle(color: Colors.red)),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onChanged: (value) {
//                 setState(() {
//                   email = value;
//                   emailError = '';
//                 });
//                 _validateEmailFields();
//               },
//             ),
//             Text(emailError, style: TextStyle(color: Colors.red)),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Phone',
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onChanged: (value) {
//                 setState(() {
//                   phone = value;
//                   phoneError = '';
//                 });
//                 _validatePhoneFields();
//               },
//             ),
//             Text(phoneError, style: TextStyle(color: Colors.red)),
//             ElevatedButton(
//               onPressed: () {
//                 _validateFields();
//                 if (_formKey.currentState!.validate()) {
//                   // Form is valid, perform your submission logic here.
//                   // You can access 'name' and 'email' here to get the values.
//                   print('Name: $name');
//                   print('Email: $email');
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   //****************************************************************************
//
//   void _validateFields() {
//     if (name.isEmpty) {
//       setState(() {
//         nameError = 'Please enter your name';
//       });
//     } else {
//       return null;
//     }
//
//     if (email.isEmpty) {
//       setState(() {
//         emailError = 'Please enter your email address';
//       });
//     } else if (!_isValidEmail(email)) {
//       setState(() {
//         emailError = 'Please enter a valid email address';
//       });
//     }
//   }
// //
//   bool isValidName(String name) {
//     final namePattern = RegExp(r'^[A-Za-z\s]{1,50}$');
//
//     return namePattern.hasMatch(name);
//   }
//
//   void _validateNameFields() {
//     if (name.isEmpty) {
//       setState(() {
//         nameError = 'Please enter your name';
//       });
//     } else {
//       return null;
//     }
//   }
//
//   bool _isValidEmail(String email) {
//     final RegExp emailRegex =
//         RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
//
//   void _validateEmailFields() {
//     if (email.isEmpty) {
//       setState(() {
//         emailError = 'Please enter your email address';
//       });
//     } else if (!_isValidEmail(email)) {
//       setState(() {
//         emailError = 'Please enter a valid email address';
//       });
//     }
//   }
//
//   bool _isValidPhone(String phone) {
//     // Define a regex pattern for phone number validation (U.S. format).
//     final phonePattern = RegExp(r'^\d{11}$');
//
//     // Use the hasMatch method to check if the phone number matches the pattern.
//     return phonePattern.hasMatch(phone);
//   }
//
//   void _validatePhoneFields() {
//     if (email.isEmpty) {
//       setState(() {
//         phoneError = 'Please enter your phone number';
//       });
//     } else if (!_isValidPhone(phone)) {
//       setState(() {
//         phoneError = 'Please enter a valid email address';
//       });
//     }
//   }
// }
//*******************************************

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
//           title: Center(child: Text('Form Live Validation ')),
//         ),
//         body: MyForm(),
//       ),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final FocusNode _nameFocusNode = FocusNode();
//   final FocusNode _emailFocusNode = FocusNode();
//
//   String name = '';
//   String email = '';
//
//   @override
//   void dispose() {
//     _nameFocusNode.dispose();
//     _emailFocusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextFormField(
//               focusNode: _nameFocusNode,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   name = value;
//                 });
//                 // Only validate when this field is in focus
//                 if (_nameFocusNode.hasFocus) {
//                   _formKey.currentState!.validate();
//                 }
//               },
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               focusNode: _emailFocusNode,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onChanged: (value) {
//                 setState(() {
//                   email = value;
//                 });
//                 // Only validate when this field is in focus
//                 if (_emailFocusNode.hasFocus) {
//                   _formKey.currentState!.validate();
//                 }
//               },
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email address';
//                 }
//                 if (!_isValidEmail(value)) {
//                   return 'Please enter a valid email address';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // Validate both fields when the submit button is pressed
//                 _formKey.currentState!.validate();
//                 if (_formKey.currentState!.validate()) {
//                   // Form is valid, perform your submission logic here.
//                   // You can access 'name' and 'email' here to get the values.
//                   print('Name: $name');
//                   print('Email: $email');
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   bool _isValidEmail(String email) {
//     // A simple regex for email validation
//     final RegExp emailRegex =
//     RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
// }
//************* Single Form ***************
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
//           title: Text('Live Validation Example'),
//         ),
//         body: MyForm(),
//       ),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _nameFormKey = GlobalKey<FormState>();
//   final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
//
//   String name = '';
//   String email = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Form(
//           key: _nameFormKey,
//           child: TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Name',
//             ),
//             onChanged: (value) {
//               setState(() {
//                 name = value;
//               });
//             },
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please enter your name';
//               }
//               return null;
//             },
//           ),
//         ),
//         Form(
//           key: _emailFormKey,
//           child: TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Email',
//             ),
//             keyboardType: TextInputType.emailAddress,
//             onChanged: (value) {
//               setState(() {
//                 email = value;
//               });
//             },
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'Please enter your email address';
//               }
//               if (!_isValidEmail(value)) {
//                 return 'Please enter a valid email address';
//               }
//               return null;
//             },
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             if (_nameFormKey.currentState!.validate() &&
//                 _emailFormKey.currentState!.validate()) {
//               // Form is valid, perform your submission logic here.
//               // You can access 'name' and 'email' here to get the values.
//               print('Name: $name');
//               print('Email: $email');
//             }
//           },
//           child: Text('Submit'),
//         ),
//       ],
//     );
//   }
//
//   bool _isValidEmail(String email) {
//     // A simple regex for email validation
//     final RegExp emailRegex =
//     RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
// }

//******************** case 3 using multiple form ************
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
//           title: Text('Live Validation '),
//         ),
//         body: MyForm(),
//       ),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _nameFormKey = GlobalKey<FormState>();
//   final GlobalKey<FormState> _emailFormKey = GlobalKey<FormState>();
//
//   String name = '';
//   String email = '';
//
//   bool _isValidEmail(String email) {
//     // A simple regex for email validation
//     final RegExp emailRegex =
//     RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(15.0),
//       child: Column(
//         children: [
//           Form(
//             key: _nameFormKey,
//             child: TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   name = value;
//                 });
//                 _nameFormKey.currentState!.validate();
//               },
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               },
//             ),
//           ),
//           Form(
//             key: _emailFormKey,
//             child: TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onChanged: (value) {
//                 setState(() {
//                   email = value;
//                 });
//                 _emailFormKey.currentState!.validate();
//               },
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email address';
//                 }
//                 if (!_isValidEmail(value)) {
//                   return 'Please enter a valid email address';
//                 }
//                 return null;
//               },
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (_nameFormKey.currentState!.validate() &&
//                   _emailFormKey.currentState!.validate()) {
//                 // Form is valid, perform your submission logic here.
//                 // You can access 'name' and 'email' here to get the values.
//                 print('Name: $name');
//                 print('Email: $email');
//               }
//             },
//             child: Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }
//
//
// }

//**************** case_2************
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
//           title: Text('Live Validation'),
//         ),
//         body: MyForm(),
//       ),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   String name = '';
//   String email = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   name = value;
//                 });
//                 _formKey.currentState!.validate();
//               },
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//               ),
//               keyboardType: TextInputType.emailAddress,
//               onChanged: (value) {
//                 setState(() {
//                   email = value;
//                 });
//                 _formKey.currentState!.validate();
//               },
//               validator: (value) {
//                 if (value!.isEmpty) {
//                   return 'Please enter your email address';
//                 }
//                 if (!_isValidEmail(value)) {
//                   return 'Please enter a valid email address';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState!.validate()) {
//                   // Form is valid, perform your submission logic here.
//                   // You can access 'name' and 'email' here to get the values.
//                   print('Name: $name');
//                   print('Email: $email');
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   bool _isValidEmail(String email) {
//     // A simple regex for email validation
//     final RegExp emailRegex =
//     RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
//     return emailRegex.hasMatch(email);
//   }
// }

//************** Case_1****************

// import 'package:flutter/material.dart';
// import 'package:email_validator/email_validator.dart';
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
//           title: Text('Live Validation Example'),
//         ),
//         body: MyForm(),
//       ),
//     );
//   }
// }
//
// class MyForm extends StatefulWidget {
//   @override
//   _MyFormState createState() => _MyFormState();
// }
//
// class _MyFormState extends State<MyForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   String name = '';
//   String email = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Name',
//             ),
//             onChanged: (value) {
//               setState(() {
//                 name = value;
//               });
//               _formKey.currentState!.validate();
//             },
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your name';
//               }
//               return null;
//             },
//           ),
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Email',
//             ),
//             keyboardType: TextInputType.emailAddress,
//             onChanged: (value) {
//               setState(() {
//                 email = value;
//               });
//               _formKey.currentState!.validate();
//             },
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your email address';
//               }
//               if (!EmailValidator.validate(value)) {
//                 return 'Please enter a valid email address';
//               }
//               return null;
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               if (_formKey.currentState!.validate()) {
//                 // Form is valid, perform your submission logic here.
//                 // You can access 'name' and 'email' here to get the values.
//                 print('Name: $name');
//                 print('Email: $email');
//               }
//             },
//             child: Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }
// }
