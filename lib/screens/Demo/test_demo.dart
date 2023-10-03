// import 'package:flutter/material.dart';
//
//
// class ContainerDemo extends StatelessWidget {
//   const ContainerDemo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
// // height:40.h,
//         width: double.infinity,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8), border: Border.all(color: Color(0xFF069DD8),width: 2)
//         ),
//
//
//         child: Row(
//           children: [
//             Expanded(
//               flex: 3,
//               child:Container(
//                 alignment: Alignment.centerLeft,
//                 height: 40,
//                 decoration: const BoxDecoration(
//                     border: Border(right: BorderSide(color: Color(0xFF069DD8), width: 2,))),
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 8.0.w,right: 2.0.w),
//                   child: Text(containerText,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp,color:Color(0xff989898)),),
//                 ),
//               ),
//             ),
//
// //Container(color: Color(0xFF069DD8), width: 2.w,height: 2,),
//
//             Expanded(
//               flex: 5,
//               child: Container(
//                 height: 40.h,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8)),
// //border: Border.all(color: Color(0xFF069DD8),width: 2.w)
//                 ),
//                 child: TextFormField(
//                   controller: editingController,
//                   keyboardType: keyboardType,
//                   onChanged: onChanged,
//                   validator: textFormFiledValidator,
//                   textInputAction: TextInputAction.next,
//                   decoration: InputDecoration(
//                     contentPadding: EdgeInsets.only(left: 10.w,top: 10.h,bottom: 11.h),
//                     fillColor: Color(0xffE0E0E0),
//                     filled: true,
// //isDense: true,
//                     border: InputBorder.none,
//
//
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.only(topRight: Radius.circular(6.r),bottomRight: Radius.circular(6.r)),
// // borderSide: BorderSide(color: Color(0xffE0E0E0),width: 2.w),
//                       borderSide: BorderSide.none,
//
//                     ),
//
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.only(topRight: Radius.circular(6.r),bottomRight: Radius.circular(6.r)),
// // borderSide: BorderSide(color: Color(0xffE0E0E0),width: 2.w),
//                       borderSide: BorderSide.none,
//                     ),
//
// // errorStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.red),
//
//                   ),
//                 ),
//               ),
//             ),
//
//             if (errorText != null)
//               Padding(
//                 padding: EdgeInsets.only(left: 8.0.w, top: 4.0),
//                 child: Text(errorText!, style: TextStyle(color: Colors.red),),),
//
//           ],
//         ));
//   }
// }
//
//
// // Container(
// // // height:40.h,
// // width: double.infinity,
// // decoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(8.r), border: Border.all(color: Color(0xFF069DD8),width: 2.w)
// // ),
// //
// //
// // child: Row(
// // children: [
// // Expanded(
// // flex: 3,
// // child:Container(
// // alignment: Alignment.centerLeft,
// // height: 40.h,
// // decoration: const BoxDecoration(
// // border: Border(right: BorderSide(color: Color(0xFF069DD8), width: 2,))),
// // child: Padding(
// // padding: EdgeInsets.only(left: 8.0.w,right: 2.0.w),
// // child: Text(containerText,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14.sp,color:Color(0xff989898)),),
// // ),
// // ),
// // ),
// //
// // //Container(color: Color(0xFF069DD8), width: 2.w,height: 2,),
// //
// // Expanded(
// // flex: 5,
// // child: Container(
// // height: 40.h,
// // decoration: BoxDecoration(
// // borderRadius: BorderRadius.only(topRight: Radius.circular(8.r),bottomRight: Radius.circular(8.r)),
// // //border: Border.all(color: Color(0xFF069DD8),width: 2.w)
// // ),
// // child: TextFormField(
// // controller: editingController,
// // keyboardType: keyboardType,
// // onChanged: onChanged,
// // validator: textFormFiledValidator,
// // textInputAction: TextInputAction.next,
// // decoration: InputDecoration(
// // contentPadding: EdgeInsets.only(left: 10.w,top: 10.h,bottom: 11.h),
// // fillColor: Color(0xffE0E0E0),
// // filled: true,
// // //isDense: true,
// // border: InputBorder.none,
// //
// //
// // focusedBorder: OutlineInputBorder(
// // borderRadius: BorderRadius.only(topRight: Radius.circular(6.r),bottomRight: Radius.circular(6.r)),
// // // borderSide: BorderSide(color: Color(0xffE0E0E0),width: 2.w),
// // borderSide: BorderSide.none,
// //
// // ),
// //
// // enabledBorder: OutlineInputBorder(
// // borderRadius: BorderRadius.only(topRight: Radius.circular(6.r),bottomRight: Radius.circular(6.r)),
// // // borderSide: BorderSide(color: Color(0xffE0E0E0),width: 2.w),
// // borderSide: BorderSide.none,
// // ),
// //
// // // errorStyle: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Colors.red),
// //
// // ),
// // ),
// // ),
// // ),
// //
// // if (errorText != null)
// // Padding(
// // padding: EdgeInsets.only(left: 8.0.w, top: 4.0),
// // child: Text(errorText!, style: TextStyle(color: Colors.red),),),
// //
// // ],
// // ));
