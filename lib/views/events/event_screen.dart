import 'package:aliv/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../const/icons.dart';
import '../../const/images.dart';
import '../notifications/notifications_screen.dart';

class EventScreen extends StatefulWidget {
  final int? index;
  const EventScreen({super.key, this.index});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffF1F5F5),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                blackAppIcon,
                width: 50,
              ),
              SizedBox(
                width: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(liveButton),
                    Image.asset(cartIcon),
                    Image.asset(chatIcon),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationsScreen()));
                        },
                        child: Image.asset(notificationIcon))
                  ],
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                calendarStyle: const CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 10, 14),
                onDaySelected: null,
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            for (int i = 0; i < 4; i++)
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Transform.translate(
                  offset: (i == 1 || i == 3) ? Offset(20.0, 0.0) : Offset.zero,
                  child: Container(
                    width: 240,
                    height: 70,
                    margin: const EdgeInsets.only(left: 16),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: blueColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                blueColor, // Use the corresponding logo color
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "15:15:15",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " eventData[i].name",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              "eventData[i].time",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
