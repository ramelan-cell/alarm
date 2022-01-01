import 'package:clockapp/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetSign = '';
    if (!timezoneString.startsWith('-')) offsetSign = '+';
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pukul',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              formattedTime,
              style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              formattedDate,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Center(
                child: ClockView(
              size: 200,
            )),
            SizedBox(
              height: 10,
            ),
            // Text(
            //   'TimeZone',
            //   style: TextStyle(fontSize: 12, color: Colors.white),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.language,
            //       color: Colors.white,
            //     ),
            //     Text(
            //       'UTC' + offsetSign + timezoneString,
            //       style: TextStyle(fontSize: 12, color: Colors.white),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
