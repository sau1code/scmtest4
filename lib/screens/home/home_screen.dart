
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../models/text.dart';
import '../announcement/announcement.dart';
import '../chatbot/chatbot.dart';
import '../overview/overview.dart';
import '../profile/profile.dart';
import 'components/drawer.dart';
import 'components/navigationbar.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Widget> listPage = [
    Container(
      alignment: Alignment.center,
      child: const OverviewScreen(),
    ),
    Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: const ProfileScreen(),
    ),
    Container(
      alignment: Alignment.center,
      child: const AnnouncementScreen(),
    ),
    Container(
      alignment: Alignment.center,
      child: const ChatbotScreen(),
    ),
  ];

  int currentPageIndex = 0;
  var pageName = [ '訂單', '我的', '公告', '客服' ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => context.push('/Login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(context),
      body: IndexedStack(index: currentPageIndex, children: listPage),
      drawer: const HomeDrawer(),
      bottomNavigationBar: HomeNavigationBar(
        index: currentPageIndex,
        onPressed: (int index) => setState(() => currentPageIndex = index),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(

      leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: const Icon(Icons.menu)
      ),
      title: Consumer<TextModel>(
          builder: (context, textModel, _) {
            return Text(
              // '${textModel.input}+',
              pageName[currentPageIndex],
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            );
          }
      ),
    );
  }
}













