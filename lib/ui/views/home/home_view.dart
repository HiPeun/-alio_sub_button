import 'package:alio_sub_button/ui/components/alio_sub_button.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TableCalendar(
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, day, events) {
                  List<Map<String, dynamic>> dayEvents =
                      viewModel.events[day] ?? [];
                  if (dayEvents.isNotEmpty) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: dayEvents.length,
                      itemBuilder: (context, index) {
                        Color markerColor = dayEvents[index]['color'];
                        return Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Icon(
                            Icons.circle,
                            size: 6.0,
                            color: markerColor,
                          ),
                        );
                      },
                    );
                  }
                  return null;
                },
              ),
              locale: 'ko_KR',
              onDaySelected: viewModel.onDaySelected,
              selectedDayPredicate: (date) {
                return isSameDay(viewModel.selectedDate, date);
              },
              firstDay: DateTime.utc(2010, 10, 16),
              focusedDay: viewModel.selectedDate,
              lastDay: DateTime(2040),
              headerStyle: HeaderStyle(
                formatButtonShowsNext: true,
                titleCentered: true,
                formatButtonVisible: false,
                titleTextStyle:
                    TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
              ),
              calendarStyle: CalendarStyle(
                markerSize: 1.0,
                selectedDecoration: BoxDecoration(
                  color: Color(0xFF8087FF),
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                markerDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.circle,
                  color: Color(0xFF8087FF),
                  size: 12.0,
                ),
                Text('완료'),
                SizedBox(width: 12),
                Icon(
                  Icons.circle,
                  color: Color(0xffFF7A68),
                  size: 12.0,
                ),
                Text('미완료'),
                SizedBox(width: 20.0)
              ],
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color(0xffF0F5FF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/calendar.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '${viewModel.selectedDate.year}년 ${viewModel.selectedDate.month}월 ${viewModel.selectedDate.day}일 ${viewModel.getWeekday(viewModel.selectedDate)}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8087FF),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    if (viewModel.events[viewModel.selectedDate] != null &&
                        viewModel.events[viewModel.selectedDate]!.isNotEmpty)
                      Expanded(
                        child: ListView.builder(
                          itemCount:
                              viewModel.events[viewModel.selectedDate]!.length,
                          itemBuilder: (context, index) {
                            var event = viewModel
                                .events[viewModel.selectedDate]![index];
                            return Card(
                              child: ListTile(
                                title: Text(event['title']),
                                trailing: IconButton(
                                  icon: Icon(Icons.delete, color: Colors.red),
                                  onPressed: () {
                                    viewModel.removeEvent(
                                        viewModel.selectedDate, index);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    else
                      Text(
                        "등록된 알림이 없어요\n새로운 알림을 추가할까요?",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                      ),
                    const SizedBox(height: 16.0),
                    AlioSubButton(
                      isChecked: viewModel.isotherNotButton,
                      busyTitle: '알림 추가하기',
                      isSelectedIcon: true,
                      icon: Icon(Icons.add),
                      onTap: (isChecked) {
                        viewModel.addEvent(
                          viewModel.selectedDate,
                          '약을 복용함',
                          Color(0xFF8087FF),
                        );
                      },
                    ),
                    AlioSubButton(
                      isChecked: viewModel.isotherNotButton,
                      busyTitle: '알림 추가하기',
                      isSelectedIcon: true,
                      icon: Icon(Icons.add),
                      onTap: (isChecked) {
                        viewModel.addEvent(
                          viewModel.selectedDate,
                          '약을 복용함',
                          Color(0xffFF7A68),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        selectedItemColor: Color(0xff5D88DB),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: '약정보',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airline_seat_recline_normal),
            label: '혈압혈당',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: '식단관리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '나의정보',
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
