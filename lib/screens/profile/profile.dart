import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(height: 160.w),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34.w),
                        topRight: Radius.circular(34.w),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.1.w, color: Colors.black12, spreadRadius: 0.1.w,
                          offset: const Offset(0, -2),
                        ),
                      ],
                      color: Colors.white
                    ),
                    height: 40.w,
                    width: 1.sw,
                    child: Container(),
                  ),

                  Row(
                    children: [
                      SizedBox(width: 30.w),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(blurRadius: 1.w, color: Colors.black12, spreadRadius: 1.w)],
                        ),
                        child: CircleAvatar(
                          radius: 70.w,
                          backgroundImage: const AssetImage('assets/images/default_user_head.png'),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.w),
                          Text(
                            'User Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26.sp,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            'ＯＯ公司',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '連絡電話',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: const Color(0xffffa263),
                    ),
                  ),
                  SizedBox(height: 10.w),
                  Text(
                    '0987-654-321',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(height: 20.w),

                  Text(
                    'E-mail',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: const Color(0xffffa263),
                    ),
                  ),
                  SizedBox(height: 10.w),
                  Text(
                    'sample@mail.com',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(height: 20.w),

                  Text(
                    '統一編號',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: const Color(0xffffa263),
                    ),
                  ),
                  SizedBox(height: 10.w),
                  Text(
                    '01234567',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.black38,
                    ),
                  ),
                  SizedBox(height: 20.w),

                  Text(
                    '聯絡地址',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: const Color(0xffffa263),
                    ),
                  ),
                  SizedBox(height: 10.w),
                  Text(
                    '台北市中正區黎明里北平西路00號',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
