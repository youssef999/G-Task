

import 'package:app/views/register_view.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


final today = DateUtils.dateOnly(DateTime.now());


class NextView extends StatelessWidget {
  String txt;

  NextView({Key? key,required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(title: '',txt: txt.toString()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String txt;
  MyHomePage({Key? key, required this.title,required this.txt}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 10,
      ),
      body: Center(
        child: SizedBox(
          width: 375,
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 90,),
              _buildDefaultSingleDatePickerWithValue(widget.txt),

            ],
          ),
        ),
      ),
    );
  }

  String _getValueText(
      CalendarDatePicker2Type datePickerType,
      List<DateTime?> values,
      ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
          .map((v) => v.toString().replaceAll('00:00:00.000', ''))
          .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0].toString().replaceAll('00:00:00.000', '');
        final endDate = values.length > 1
            ? values[1].toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startDate to $endDate';
      } else {
        return 'null';
      }
    }

    return valueText;
  }



  Widget _buildDefaultSingleDatePickerWithValue(String txt) {
    final config = CalendarDatePicker2Config(
      selectedDayHighlightColor: Colors.amber[900],
      weekdayLabels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      firstDayOfWeek: 1,
      controlsHeight: 50,
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      dayTextStyle: const TextStyle(
        color: Colors.amber,
        fontWeight: FontWeight.bold,
      ),
      disabledDayTextStyle: const TextStyle(
        color: Colors.grey,
      ),
      selectableDayPredicate: (day) => !day
          .difference(DateTime.now().subtract(const Duration(days: 3)))
          .isNegative,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        CalendarDatePicker2(
          config: config,
          value: _singleDatePickerValueWithDefaultValue,
          onValueChanged: (dates) =>
          setState(() {
            _singleDatePickerValueWithDefaultValue = dates;
          })
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Selection(s):  '),
            const SizedBox(width: 10),
            Text(
              _getValueText(
                config.calendarType,
                _singleDatePickerValueWithDefaultValue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        InkWell(
          child:const SizedBox(
            width:129,
            child: Card(
              color:Colors.blue,
              child:Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text('Next',style:TextStyle(color:Colors.white,fontSize:21),)),
              ),
            ),
          ),
          onTap:(){
            Get.to(RegisterScreen(
              txt: widget.txt.toString(),
              date: _singleDatePickerValueWithDefaultValue.toString(),
            ));
          },
        )
      ],
    );
  }

}