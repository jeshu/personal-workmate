import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class LogsScreen extends StatelessWidget {
  static const String routeName = 'logsScreen';

  final DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        centerTitle: true,
        title: Text(
          'Stats',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          MaterialButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.check),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                (30),
              ),
              color: Color(0XFFE7E7DE),
            ),
            child: TableCalendar(
              focusedDay: today,
              firstDay: today.subtract(const Duration(days: 20)),
              lastDay: today,
              weekendDays: [1, 2, 3, 4, 5],
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarFormat: CalendarFormat.twoWeeks,
            ),
          )
        ],
      ),
    );
  }
}
