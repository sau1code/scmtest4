import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({Key? key}) : super(key: key);

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
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1, // 寬高比
        ),
        itemCount: 20,
        itemBuilder: ((context, index) => GestureDetector(
          onTap: () =>
            Fluttertoast.showToast(
                msg: "Toast $index",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.sp
            ),

          child: Padding(
            padding: EdgeInsets.fromLTRB(4.w, 1.w, 4.w, 0),
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "系統公告",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                )
                            ),
                            Text(
                                "2022-12-27",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                )
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.h,
                        color: const Color(0xffdfdfdf),
                      ),
                    ],
                  ),

                  const Align(
                    alignment: Alignment(1, 1),
                    child: Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 50,
                    )
                  ),

                ],
              )
            ),
          ),
        )),
      ),
    );
  }
}
