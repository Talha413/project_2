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
//           title: Text('Dropdown Validator Example'),
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
//   String ?selectedValue;
//   String? errorText;
//
//   // Sample list of dropdown items
//   List<String> items = ['Option 1', 'Option 2', 'Option 3'];
//
//   // Validator function
//   String? validateDropdown(String value) {
//     if (value == null || value.isEmpty) {
//       return 'Please select an option';
//     }
//     return null;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           DropdownButtonFormField<String>(
//             value: selectedValue,
//             items: items.map((item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(item),
//               );
//             }).toList(),
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value!;
//               });
//             },
//             validator: validateDropdown(selectedValue!),
//           ),
//           SizedBox(height: 10),
//           Text(
//             errorText ?? '',
//             style: TextStyle(
//               color: Colors.red,
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               if (validateDropdown(selectedValue!) == null) {
//                 // Dropdown is valid, do something
//                 setState(() {
//                   errorText = null;
//                 });
//               } else {
//                 // Dropdown is invalid, display error message
//                 setState(() {
//                   errorText = 'Please select an option';
//                 });
//               }
//             },
//             child: Text('Submit'),
//           ),
//         ],
//       ),
//     );
//   }
// }
