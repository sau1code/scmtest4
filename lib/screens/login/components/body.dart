import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../common/constants.dart';
import '../../../models/text.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime? _lastPressedAt;
  int _dropdownValue = 0;
  double _fontSize = 20.sp;
  String _account = "+";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) > const Duration(seconds: 1)) {
          _lastPressedAt = DateTime.now();
        } else {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          // exit(0);
        }
        return false;
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          child: Column(
                children: [

                  SizedBox(height: 30.h),
                  Text(
                    '景佳 SCM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFB5B5B5),
                      fontSize: 28.sp
                    )
                  ),

                  SizedBox(height: 8.h),
                  Container(
                    height: 1.h,
                    color: const Color(0xffeaeaea),
                  ),

                  SizedBox(height: 14.h),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    elevation: 4.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.r),
                      child: Image.asset(
                        'assets/images/fs_icon_orange.png',
                        width: 130.w,
                      ),
                    ),
                  ),

                  SizedBox(height: 5.h),
                  Padding(
                    padding: EdgeInsets.only(left: 55.w),
                    child: DropdownButton(
                        style: TextStyle(fontSize: 18.sp, color: Colors.black38),
                        icon: const Icon(Icons.arrow_drop_down_rounded, ),
                        value: _dropdownValue,
                        underline: const SizedBox(height: 0),
                        iconSize: 50.w,
                        items: const [
                          DropdownMenuItem(value: 0, child: Text('連線主機 Port')),
                          DropdownMenuItem(value: 1, child: Text('Banana')),
                          DropdownMenuItem(value: 2, child: Text('Cat')),
                          DropdownMenuItem(value: 3, child: Text('Dog')),
                        ],
                        onChanged: (int? value) => setState(() {
                          _dropdownValue = value!;
                        }),

                    ),
                  ),

                  SizedBox(height: 10.h),
                  TextField(
                    cursorColor: myOrange,
                    style: TextStyle(fontSize: _fontSize),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 10.h, 50.w, 10.h),
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.r)),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.r)),
                        borderSide: BorderSide(color: myOrange, width: 3.w),
                      ),
                      label: const Center(child: Text('E-mail')),
                      labelStyle: TextStyle(fontSize: 20.sp, color: const Color(0xFFC6C6C6)),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Icon(Icons.mail_outline, size: 26.w, color: const Color(0xFF9C9C9C)),
                      ),
                    ),
                    onChanged: (text) =>
                        setState(() {
                          _account = text;
                          _fontSize = text.length < 16
                              ? 20.sp
                              : text.length < 23 ? 14.sp
                              : 10.sp;
                        }
                    ),
                  ),

                  SizedBox(height: 14.h),
                  TextField(
                    cursorColor: myOrange,
                    style: TextStyle(fontSize: 20.sp),
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 10.h, 50.w, 10.h),
                      filled: true,
                      fillColor: const Color(0xFFF1F1F1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.r)),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.r)),
                        borderSide: BorderSide(color: myOrange, width: 3.w),
                      ),
                      label: const Center(child: Text('Password')),
                      labelStyle: TextStyle(fontSize: 20.sp, color: const Color(0xFFC6C6C6)),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 24.w),
                        child: Icon(Icons.lock_outline, size: 26.w, color: const Color(0xFF9C9C9C)),
                      ),
                    ),
                  ),

                  SizedBox(height: 40.h),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              context.read<TextModel>().setInputAndNotify(_account);
                              // context.read<TextModel>().isApproval
                              //   ? context.pop(context)
                              //   : Fluttertoast.showToast(
                              //               msg: "XXX",
                              //               toastLength: Toast.LENGTH_SHORT,
                              //               gravity: ToastGravity.CENTER,
                              //               timeInSecForIosWeb: 1,
                              //               backgroundColor: Colors.red,
                              //               textColor: Colors.white,
                              //               fontSize: 16.0
                              //           );
                              context.pop(context);
                            },
                            child: const Text('Login'),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 100.h),

                ]
                  // .map((widget) => Padding(
                  //   padding: const EdgeInsets.only(top: 0),
                  //   child: widget,
                  // )).toList()

          ),
        ),
      ),
    );
  }
}