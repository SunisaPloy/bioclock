import 'package:bioclock/alarm_info.dart';
import 'package:bioclock/enums.dart';

import 'menu_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.calculate,
      title: "Calculate", imageSource: "assets/sleeping.png"),
  MenuInfo(MenuType.music,
      title: "Music", imageSource: "assets/music-notes.png"),
  MenuInfo(MenuType.alarm, title: "Alarm", imageSource: "assets/alarm.png"),
  MenuInfo(MenuType.timer, title: "Timer", imageSource: "assets/timer.png"),
];

List<AlarmInfo> alarms = [
  
  AlarmInfo(alarmDateTime: DateTime.now().add(Duration(hours: 1)), title: 'Study', gradientColorIndex: 0),
  AlarmInfo(alarmDateTime: DateTime.now().add(Duration(hours: 2)), title: 'Sport', gradientColorIndex: 1),
];



