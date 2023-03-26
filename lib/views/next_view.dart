

import 'package:app/views/register_view.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text.dart';


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

  TextEditingController time=TextEditingController();
  TextEditingController time2=TextEditingController();
  TextEditingController time3=TextEditingController();
  TextEditingController time4=TextEditingController();
  TextEditingController time5=TextEditingController();
  TextEditingController time6=TextEditingController();
  TextEditingController time7=TextEditingController();


  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];

  List<DateTime?> _singleDatePickerValueWithDefaultValue2 = [
    DateTime.now(),
  ];

  List<DateTime?> _singleDatePickerValueWithDefaultValue3 = [
    DateTime.now(),
  ];

  List<DateTime?> _singleDatePickerValueWithDefaultValue4 = [
    DateTime.now(),
  ];

  List<DateTime?> _singleDatePickerValueWithDefaultValue5 = [
    DateTime.now(),
  ];

  List<DateTime?> _singleDatePickerValueWithDefaultValue6 = [
    DateTime.now(),
  ];

  List<DateTime?> _singleDatePickerValueWithDefaultValue7 = [
    DateTime.now(),
  ];
  String _selectedColor = 'choose1';

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
              const SizedBox(height: 30,),
              Column(
                children: [

                  const Custom_Text(
                    text: 'Choose Number Of Days You Need',
                    fontSize: 22,
                    color:Colors.black,
                    alignment:Alignment.center,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '1',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('1'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '2',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('2'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '3',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('3'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '4',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('4'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '5',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('5'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '6',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('6'),
                    ],
                  ),

                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Radio(
                        value: '7',
                        groupValue: _selectedColor,
                        onChanged: (value) {
                          setState(() {
                            _selectedColor = value!;
                          });
                        },
                      ),
                      const Text('7'),
                    ],
                  ),

                  const SizedBox(height: 10,),




                ],
              ),
              if(_selectedColor=='1')
              Column(
                children: [
                  _buildDefaultSingleDatePickerWithValue(widget.txt),
                  TimeWidget(time, context),
                ],
              ),


              if(_selectedColor=='2')
                Column(
                  children: [
                    _buildDefaultSingleDatePickerWithValue(widget.txt),
                    TimeWidget(time, context),
                    _buildDefaultSingleDatePickerWithValue2(widget.txt),
                    TimeWidget(time2, context),
                  ],
                ),
              if(_selectedColor=='3')
                Column(
                  children: [
                    _buildDefaultSingleDatePickerWithValue(widget.txt),
                    TimeWidget(time, context),
                    _buildDefaultSingleDatePickerWithValue2(widget.txt),
                    TimeWidget(time2, context),
                    _buildDefaultSingleDatePickerWithValue3(widget.txt),
                    TimeWidget(time3, context),
                  ],
                ),
              if(_selectedColor=='4')
                Column(
                  children: [
                    _buildDefaultSingleDatePickerWithValue(widget.txt),
                    TimeWidget(time, context),
                    _buildDefaultSingleDatePickerWithValue2(widget.txt),
                    TimeWidget(time2, context),
                    _buildDefaultSingleDatePickerWithValue3(widget.txt),
                    TimeWidget(time3, context),
                    _buildDefaultSingleDatePickerWithValue4(widget.txt),
                    TimeWidget(time4, context),
                  ],
                ),
              if(_selectedColor=='5')
                Column(
                  children: [
                    _buildDefaultSingleDatePickerWithValue(widget.txt),
                    TimeWidget(time, context),
                    _buildDefaultSingleDatePickerWithValue2(widget.txt),
                    TimeWidget(time2, context),
                    _buildDefaultSingleDatePickerWithValue3(widget.txt),
                    TimeWidget(time3, context),
                    _buildDefaultSingleDatePickerWithValue4(widget.txt),
                    TimeWidget(time4, context),
                    _buildDefaultSingleDatePickerWithValue5(widget.txt),
                    TimeWidget(time5, context),
                  ],
                ),
              if(_selectedColor=='6')
                Column(
                  children: [
                    _buildDefaultSingleDatePickerWithValue(widget.txt),
                    TimeWidget(time, context),
                    _buildDefaultSingleDatePickerWithValue2(widget.txt),
                    TimeWidget(time2, context),
                    _buildDefaultSingleDatePickerWithValue3(widget.txt),
                    TimeWidget(time3, context),
                    _buildDefaultSingleDatePickerWithValue4(widget.txt),
                    TimeWidget(time4, context),
                    _buildDefaultSingleDatePickerWithValue5(widget.txt),
                    TimeWidget(time5, context),
                    _buildDefaultSingleDatePickerWithValue6(widget.txt),
                    TimeWidget(time6, context),
                  ],
                ),
              if(_selectedColor=='7')
                Column(
                  children: [
                    _buildDefaultSingleDatePickerWithValue(widget.txt),
                    TimeWidget(time, context),
                    _buildDefaultSingleDatePickerWithValue2(widget.txt),
                    TimeWidget(time2, context),
                    _buildDefaultSingleDatePickerWithValue3(widget.txt),
                    TimeWidget(time3, context),
                    _buildDefaultSingleDatePickerWithValue4(widget.txt),
                    TimeWidget(time4, context),
                    _buildDefaultSingleDatePickerWithValue5(widget.txt),
                    TimeWidget(time5, context),
                    _buildDefaultSingleDatePickerWithValue6(widget.txt),
                    TimeWidget(time6, context),
                    _buildDefaultSingleDatePickerWithValue7(widget.txt),
                    TimeWidget(time7, context),
                  ],
                ),

              const SizedBox(height: 30,),
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
                  Get.to( RegisterScreen(

                    txt:  _selectedColor, date: _singleDatePickerValueWithDefaultValue.toString(),
                    time: time.toString()
                  ));
                },
              ),
              const SizedBox(height: 30,),



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

      ],
    );
  }


  Widget _buildDefaultSingleDatePickerWithValue2(String txt) {
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
            value: _singleDatePickerValueWithDefaultValue2,
            onValueChanged: (dates) =>
                setState(() {
                  _singleDatePickerValueWithDefaultValue2= dates;
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
                _singleDatePickerValueWithDefaultValue2,
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget _buildDefaultSingleDatePickerWithValue3(String txt) {
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
            value: _singleDatePickerValueWithDefaultValue3,
            onValueChanged: (dates) =>
                setState(() {
                  _singleDatePickerValueWithDefaultValue3= dates;
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
                _singleDatePickerValueWithDefaultValue3,
              ),
            ),
          ],
        ),

      ],
    );
  }


  Widget _buildDefaultSingleDatePickerWithValue4(String txt) {
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
            value: _singleDatePickerValueWithDefaultValue4,
            onValueChanged: (dates) =>
                setState(() {
                  _singleDatePickerValueWithDefaultValue4= dates;
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
                _singleDatePickerValueWithDefaultValue4,
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget _buildDefaultSingleDatePickerWithValue5(String txt) {
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
            value: _singleDatePickerValueWithDefaultValue5,
            onValueChanged: (dates) =>
                setState(() {
                  _singleDatePickerValueWithDefaultValue5= dates;
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
                _singleDatePickerValueWithDefaultValue5,
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget _buildDefaultSingleDatePickerWithValue6(String txt) {
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
            value: _singleDatePickerValueWithDefaultValue6,
            onValueChanged: (dates) =>
                setState(() {
                  _singleDatePickerValueWithDefaultValue6= dates;
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
                _singleDatePickerValueWithDefaultValue6,
              ),
            ),
          ],
        ),

      ],
    );
  }


  Widget _buildDefaultSingleDatePickerWithValue7(String txt) {
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
            value: _singleDatePickerValueWithDefaultValue7,
            onValueChanged: (dates) =>
                setState(() {
                  _singleDatePickerValueWithDefaultValue7= dates;
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
                _singleDatePickerValueWithDefaultValue7,
              ),
            ),
          ],
        ),

      ],
    );
  }
}



Widget TimeWidget(TextEditingController time,BuildContext context){

  return     Column(
    children: [
      const SizedBox(height: 30,),
      const Custom_Text(text: 'TIME',fontSize: 21,color:Colors.black,alignment:Alignment.center,),
      const SizedBox(height: 10,),
      SizedBox(
        height:130,
        child: TextFormField(
          validator: (value) {
            if (value.toString() == '' || value == null) {
              return 'Enter Time ';
            }
          },
          controller:time,
          style:const TextStyle(fontSize:22,color:Colors.purple),
          keyboardType: TextInputType.datetime,
          decoration: InputDecoration(
            hintText: ' Time ',
            hintStyle: const TextStyle(fontSize:13,color:Colors.purple),
            fillColor: Colors.white,
            suffixIcon: IconButton(
              icon: const Icon(Icons.timelapse_sharp),
              onPressed: () {
                showTimePicker(context: context,
                    initialTime: TimeOfDay.now()).then((value) {
                  print(value!.format(context).toString());
                  time.text =
                      value.format(context).toString();
                });
              },
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(5.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(5.5),

            ),
            filled: true,
          ),
          onTap: () {
            showTimePicker(context: context,
                initialTime: TimeOfDay.now()).then((value) {
              print(value!.format(context).toString());
              time.text =
                  value.format(context).toString();
            });
          },
        ),
      ),
    ],
  );
}
