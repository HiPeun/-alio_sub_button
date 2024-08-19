import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  DateTime selectedDate = DateTime.now();

  Map<DateTime, List<Map<String, dynamic>>> events = {};

  bool isNotButton = false;
  bool isotherNotButton = false;

  void addEvent(DateTime date, String title, Color color) {
    if (events[date] != null) {
      events[date]?.add({'title': title, 'color': color});
    } else {
      events[date] = [
        {'title': title, 'color': color}
      ];
    }
    notifyListeners();
  }

  void removeEvent(DateTime date, int index) {
    if (events[date] != null && events[date]!.length > index) {
      events[date]!.removeAt(index);
      if (events[date]!.isEmpty) {
        events.remove(date);
      }
      notifyListeners();
    }
  }

  void notButtonSelected() {
    isNotButton = !isNotButton;
    notifyListeners();
  }

  void otherNotButtonSelected() {
    isotherNotButton = !isotherNotButton;
    notifyListeners();
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    this.selectedDate = selectedDate;
    notifyListeners();
  }

  String getWeekday(DateTime date) {
    List<String> weekdays = ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'];
    return weekdays[date.weekday % 7];
  }
}
