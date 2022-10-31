import 'package:app_prmo/domain/usuario.dart';
import 'package:app_prmo/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../widget/appbar_widget.dart';


class CalendarioPage extends StatefulWidget {
  final Usuario user;

  const CalendarioPage({super.key, required this.user});
 @override
 _CalendarioPageState createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
 late CalendarController _controller;

 @override
 void initState() {
   // TODO: implement initState
   super.initState();
   _controller = CalendarController();
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     drawer:  DrawerWidget(user: widget.user,),
     appBar: const AppBarWidget(title: 'CALENDÁRIO'),
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: ListView(
         children: [
           Column(
             children: [
               SingleChildScrollView(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     TableCalendar(
                       initialCalendarFormat: CalendarFormat.month,
                       calendarStyle: CalendarStyle(
                           todayColor: const Color(0xFF6BC07D),
                           selectedColor: Theme.of(context).primaryColor,
                           todayStyle: const TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 18.0,
                               color: Colors.white)),
                       headerStyle: HeaderStyle(
                         centerHeaderTitle: true,
                         formatButtonDecoration: BoxDecoration(
                           color: const Color(0xFF6BC07D),
                           borderRadius: BorderRadius.circular(20.0),
                         ),
                         formatButtonTextStyle: const TextStyle(color: Colors.white),
                         formatButtonShowsNext: false,
                       ),
                       availableCalendarFormats: const{
                         CalendarFormat.month: "Mês",
                         CalendarFormat.week: "Semana",
                         CalendarFormat.twoWeeks: "2 semanas",
                       },
                       startingDayOfWeek: StartingDayOfWeek.sunday,
                       onDaySelected: (date, events, _) {
                         print(date.toIso8601String());
                       },
                       builders: CalendarBuilders(
                         selectedDayBuilder: (context, date, events) => Container(
                             margin: const EdgeInsets.all(4.0),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                                 color: Theme.of(context).primaryColor,
                                 borderRadius: BorderRadius.circular(10.0)),
                             child: Text(
                               date.day.toString(),
                               style: const TextStyle(color: Colors.white),
                             )),
                         todayDayBuilder: (context, date, events) => Container(
                             margin: const EdgeInsets.all(4.0),
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                                 color: const Color(0xFF6BC07D),
                                 borderRadius: BorderRadius.circular(10.0)),
                             child: Text(
                               date.day.toString(),
                               style: const TextStyle(color: Colors.white),
                             )),
                       ),
                       calendarController: _controller,
                     )
                   ],
                 ),
               ),
               const SizedBox(height: 20),
               const Text(
                 "Próximos eventos:",
                 style: TextStyle(
                     fontFamily: 'Roboto',
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                     color: Colors.black),
               ),
               const SizedBox(height: 12),
               const Placeholder(
                 fallbackHeight: 100,
                 fallbackWidth: 100,
                 color: Colors.black,
               ),
               const SizedBox(height: 20),
               const Placeholder(
                 fallbackHeight: 100,
                 fallbackWidth: 100,
                 color: Colors.black,
               ),
               const SizedBox(height: 20),
               const Placeholder(
                 fallbackHeight: 100,
                 fallbackWidth: 100,
                 color: Colors.black,
               ),
             ],
           ),
         ],
       ),
     ),
   );
 }
}
