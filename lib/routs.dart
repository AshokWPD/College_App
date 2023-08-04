import 'package:app_dsa/about.dart';
import 'package:app_dsa/college/mob_clg.dart';
import 'package:app_dsa/home_containers/addstu/addstu.dart';

import 'package:app_dsa/home_containers/att/list.dart';
import 'package:app_dsa/home_containers/fees/fees.dart';
import 'package:app_dsa/home_containers/fees/feeslist.dart';
import 'package:app_dsa/home_containers/leave/leave.dart';
import 'package:app_dsa/home_containers/mess/mob_mess.dart';
import 'package:app_dsa/home_containers/noticebord/notice.dart';
import 'package:app_dsa/home_containers/noticebord/notivelist.dart';
import 'package:app_dsa/home_containers/result/result.dart';
import 'package:app_dsa/home_containers/test/test.dart';
import 'package:app_dsa/home_containers/time/time.dart';
import 'package:app_dsa/home_containers/time/timelist.dart';
import 'package:app_dsa/profile/mob_profile.dart';
import 'package:app_dsa/responsive/mob_home.dart';
import 'package:app_dsa/setting.dart';
import 'package:app_dsa/splash%20screen/mob_splash.dart';
import 'package:flutter/cupertino.dart';
import 'home_containers/att/att.dart';
import 'login/mob_log.dart';

Map<String, WidgetBuilder> routes = {
  mobsplash.routename: (context) => mobsplash(),
  moblog.routeName: (context) => moblog(),
  mob_home.routename: (context) => mob_home(),
  attview.routeName: (context) => attview(),
  fees.routeName: (context) => fees(),
  leaveview.routeName: (context) => leaveview(),
  mobMess.routename: (context) => mobMess(),
  resultview.routeName: (context) => resultview(),
  clgnot.routeName: (context) => clgnot(),
  mobprof.routeName: (context) => mobprof(),
  about.routeName: (context) => about(),
  setting.routeName: (context) => setting(),
  addstu.routename: (context) => addstu(),
  timeTable.routeName: (context) => timeTable(),
  dailyTest.routeName: (context) => dailyTest(),
  PDFPage.routename: (context) => PDFPage(),
  FeesPage.routename: (context) => FeesPage(),
  timePage.routename: (context) => timePage(),
  notPage.routename: (context) => notPage(),
  notice.routeName: (context) => notice(),
};
