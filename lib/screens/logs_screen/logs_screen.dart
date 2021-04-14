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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
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
              headerVisible: false,
              calendarFormat: CalendarFormat.twoWeeks,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                (4),
              ),
              color: Theme.of(context).primaryColor,
            ),
            height: 8,
            width: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Recent activity',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Color(0XFFCCCCCC),
                ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Expanded(
              child: LogsCard(index: 1),
            ),
          )
        ],
      ),
    );
  }
}

class LogsCard extends StatelessWidget {
  const LogsCard({
    Key key,
    this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    var edgeInsets = EdgeInsets.only(
      top: 30,
      left: 0,
      right: 0,
      bottom: 0,
    );
    return Container(
      margin: index % 2 != 0
          ? edgeInsets
          : EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Days active',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Card(
              child: Center(
                child: Text('5'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
