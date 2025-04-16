import 'dart:ui';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

DateTime get _now => DateTime.now();

void main() {
  runApp(CalMyApp());
}

class CalMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController()..addAll(_events),
      child: MaterialApp(
        title: 'Демо календаря',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        scrollBehavior: ScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.trackpad,
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
          },
        ),
        home: HomePage(),
      ),
    );
  }
}

List<CalendarEventData> _events = [
  CalendarEventData(
    date: _now,
    title: "Тренировка в спортзале",
    description: "Понедельник: кардио и пресс",
    startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
    endTime: DateTime(_now.year, _now.month, _now.day, 20),
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 3)),
    recurrenceSettings: RecurrenceSettings.withCalculatedEndDate(
      startDate: _now.subtract(Duration(days: 3)),
    ),
    title: 'Плавание',
    description: 'Тренировка в бассейне',
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 3)),
    recurrenceSettings: RecurrenceSettings.withCalculatedEndDate(
      startDate: _now.subtract(Duration(days: 3)),
      frequency: RepeatFrequency.daily,
      recurrenceEndOn: RecurrenceEnd.after,
      occurrences: 5,
    ),
    title: 'Йога',
    description: 'Утренняя йога для гибкости',
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 1)),
    startTime: DateTime(_now.year, _now.month, _now.day, 18),
    endTime: DateTime(_now.year, _now.month, _now.day, 19),
    recurrenceSettings: RecurrenceSettings(
      startDate: _now,
      endDate: _now.add(Duration(days: 5)),
      frequency: RepeatFrequency.daily,
      recurrenceEndOn: RecurrenceEnd.after,
      occurrences: 5,
    ),
    title: "Бег",
    description: "Вечный бег по парку",
  ),
  CalendarEventData(
    date: _now,
    startTime: DateTime(_now.year, _now.month, _now.day, 14),
    endTime: DateTime(_now.year, _now.month, _now.day, 17),
    title: "Фитнес-тренировка",
    description: "Тренировка с личным тренером",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 3)),
    startTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 10),
    endTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 14),
    title: "Пилатес",
    description: "Групповая тренировка пилатеса",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        14),
    endTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        16),
    title: "Тяжелая атлетика",
    description: "Тренировка с гантелями",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        10),
    endTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        12),
    title: "Кроссфит",
    description: "Интервальная тренировка",
  ),
];
