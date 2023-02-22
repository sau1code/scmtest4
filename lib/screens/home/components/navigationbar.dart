
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants.dart';

class HomeNavigationBar extends StatelessWidget {
 const HomeNavigationBar({
    Key? key,
    required this.index,
    required this.onPressed,
  }) : super(key: key);

  final int index;
  final Function(int)? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[ BoxShadow(color: Colors.grey, blurRadius: 1)],
      ),
      child: SizedBox(
        height: 38.w,
        child: BottomNavigationBar(
            selectedItemColor: myOrange[400],
            unselectedItemColor: const Color(0xFF9C9C9C),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: index,
            iconSize: 28.w,
            selectedIconTheme: IconThemeData(size: 32.w),
            onTap: onPressed,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.description_rounded),
                label: '訂單',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: '我的',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.campaign_rounded),
                label: '公告',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_support_rounded),
                label: '客服',
              ),
            ],
        ),
      )
    );
  }
}



