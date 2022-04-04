import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() {
  return runApp(MyApp());
}

/// My app class to display the date range picker
class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

/// State for MyApp
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('DatePicker demo'),
            ),
            body: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SfDateRangePicker(
                  headerHeight: 100,
                  enablePastDates: false,
                  todayHighlightColor: Colors.black,
                  showTodayButton: false,
                  monthViewSettings: DateRangePickerMonthViewSettings(
                      dayFormat: 'EEE',
                      enableSwipeSelection: true,
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      )),
                  headerStyle: DateRangePickerHeaderStyle(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs d) {},
                  rangeSelectionColor: Colors.brown.withOpacity(.3),
                  startRangeSelectionColor: Colors.brown,
                  endRangeSelectionColor: Colors.brown,
                  selectionShape: DateRangePickerSelectionShape.rectangle,
                  selectionMode: DateRangePickerSelectionMode.range,
                ),
              ],
            )));
  }
}
