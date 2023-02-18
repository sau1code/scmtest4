import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).primaryColor,
      onRefresh: () =>
          Fluttertoast.showToast(
              msg: "RefreshIndicator",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.sp
          ),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => context.push('/purchase_requisition'),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  elevation: 4.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
                    child: Column(
                      children: [
                        Container(color: const Color(0xFF2096C3), height: 40.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "請購",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    )
                                ),
                                Text(
                                    "10 筆",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(color: Colors.white, height: 200.h),
                      ],
                    )
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              GestureDetector(
                onTap: () => context.push('/purchase_order'),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  elevation: 4.w,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.r),
                      child: Column(
                        children: [
                          Container(color: const Color(0xFF64A164), height: 40.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "採購",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      )
                                  ),
                                  Text(
                                      "120 筆",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(color: Colors.white, height: 200.h),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              GestureDetector(
                onTap: () => context.push('/pending_order'),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  elevation: 4.w,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.r),
                      child: Column(
                        children: [
                          Container(color: const Color(0xFFA88467), height: 40.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      "訂單代辦",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      )
                                  ),
                                  Text(
                                      "7 筆",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(color: Colors.white, height: 200.h),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(height: 6.h),
            ],
          ),
        ),
      ),
    );
  }
}

