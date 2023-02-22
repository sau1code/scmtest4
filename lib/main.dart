
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/constants.dart';
import 'common/router.dart';
import 'models/text.dart';



// https://ithelp.ithome.com.tw/articles/10227927
void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: TextModel())
          ],
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router(),
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: const ColorScheme.light(primary: myWhite),
              iconTheme: const IconThemeData(color: Colors.grey),
              scaffoldBackgroundColor: myOrange[50],
              useMaterial3: true,
              primaryColor: myOrange,

              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: myOrange,
                  elevation: 4.w,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                ),
              ),

              appBarTheme: const AppBarTheme(
                backgroundColor: myWhite,
                elevation: 2,
                shadowColor: myWhite,
                centerTitle: true,
              ),

            ),
          ),
        );
      }
    );
  }

}
