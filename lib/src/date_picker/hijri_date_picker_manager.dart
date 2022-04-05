import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'picker_helper.dart';

@immutable
class HijriDatePickerMonthViewSettings with Diagnosticable {
  const HijriDatePickerMonthViewSettings(
      {this.firstDayOfWeek = 7,
      this.dayFormat = 'EE',
      this.viewHeaderHeight = 30,
      this.viewHeaderStyle = const DateRangePickerViewHeaderStyle(),
      this.enableSwipeSelection = true,
      this.blackoutDates,
      this.specialDates,
      this.showWeekNumber = false,
      this.weekNumberStyle = const DateRangePickerWeekNumberStyle(),
      this.weekendDays = const <int>[6, 7]})
      : assert(firstDayOfWeek >= 1 && firstDayOfWeek <= 7),
        assert(viewHeaderHeight >= -1);

  final String dayFormat;

  final bool enableSwipeSelection;

  final int firstDayOfWeek;

  final DateRangePickerViewHeaderStyle viewHeaderStyle;

  final double viewHeaderHeight;

  final List<HijriDateTime>? blackoutDates;

  final List<HijriDateTime>? specialDates;

  final bool showWeekNumber;

  final DateRangePickerWeekNumberStyle weekNumberStyle;

  final List<int> weekendDays;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }

    late final HijriDatePickerMonthViewSettings otherStyle;
    if (other is HijriDatePickerMonthViewSettings) {
      otherStyle = other;
    }
    return otherStyle.dayFormat == dayFormat &&
        otherStyle.firstDayOfWeek == firstDayOfWeek &&
        otherStyle.viewHeaderStyle == viewHeaderStyle &&
        otherStyle.viewHeaderHeight == viewHeaderHeight &&
        otherStyle.blackoutDates == blackoutDates &&
        otherStyle.specialDates == specialDates &&
        otherStyle.weekendDays == weekendDays &&
        otherStyle.enableSwipeSelection == enableSwipeSelection &&
        otherStyle.showWeekNumber == showWeekNumber &&
        otherStyle.weekNumberStyle == weekNumberStyle;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableDiagnostics<HijriDateTime>(blackoutDates)
        .toDiagnosticsNode(name: 'blackoutDates'));
    properties.add(IterableDiagnostics<HijriDateTime>(specialDates)
        .toDiagnosticsNode(name: 'specialDates'));
    properties.add(IntProperty('firstDayOfWeek', firstDayOfWeek));
    properties.add(DoubleProperty('viewHeaderHeight', viewHeaderHeight));
    properties.add(StringProperty('dayFormat', dayFormat));
    properties.add(DiagnosticsProperty<bool>(
        'enableSwipeSelection', enableSwipeSelection));
    properties.add(viewHeaderStyle.toDiagnosticsNode(name: 'viewHeaderStyle'));
    properties.add(IterableProperty<int>('weekendDays', weekendDays));
    properties.add(DiagnosticsProperty<bool>('showWeekNumber', showWeekNumber));
    properties.add(weekNumberStyle.toDiagnosticsNode(name: 'weekNumberStyle'));
  }

  @override
  int get hashCode {
    return hashValues(
        dayFormat,
        firstDayOfWeek,
        viewHeaderStyle,
        enableSwipeSelection,
        viewHeaderHeight,
        showWeekNumber,
        weekNumberStyle,
        hashList(specialDates),
        hashList(blackoutDates),
        hashList(weekendDays));
  }
}

@immutable
class HijriDatePickerYearCellStyle with Diagnosticable {
  const HijriDatePickerYearCellStyle(
      {this.textStyle,
      this.todayTextStyle,
      this.disabledDatesTextStyle,
      this.cellDecoration,
      this.todayCellDecoration,
      this.disabledDatesDecoration});

  final TextStyle? textStyle;

  final TextStyle? todayTextStyle;

  final TextStyle? disabledDatesTextStyle;

  final Decoration? disabledDatesDecoration;

  final Decoration? cellDecoration;

  final Decoration? todayCellDecoration;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }

    late final HijriDatePickerYearCellStyle otherStyle;
    if (other is HijriDatePickerYearCellStyle) {
      otherStyle = other;
    }
    return otherStyle.textStyle == textStyle &&
        otherStyle.todayTextStyle == todayTextStyle &&
        otherStyle.disabledDatesDecoration == disabledDatesDecoration &&
        otherStyle.cellDecoration == cellDecoration &&
        otherStyle.todayCellDecoration == todayCellDecoration &&
        otherStyle.disabledDatesTextStyle == disabledDatesTextStyle;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextStyle>('textStyle', textStyle));
    properties
        .add(DiagnosticsProperty<TextStyle>('todayTextStyle', todayTextStyle));
    properties.add(DiagnosticsProperty<TextStyle>(
        'disabledDatesTextStyle', disabledDatesTextStyle));
    properties.add(DiagnosticsProperty<Decoration>(
        'disabledDatesDecoration', disabledDatesDecoration));
    properties
        .add(DiagnosticsProperty<Decoration>('cellDecoration', cellDecoration));
    properties.add(DiagnosticsProperty<Decoration>(
        'todayCellDecoration', todayCellDecoration));
  }

  @override
  int get hashCode {
    return hashValues(textStyle, todayTextStyle, disabledDatesTextStyle,
        disabledDatesDecoration, cellDecoration, todayCellDecoration);
  }
}

@immutable
class HijriDatePickerMonthCellStyle with Diagnosticable {
  const HijriDatePickerMonthCellStyle(
      {this.textStyle,
      this.todayTextStyle,
      this.disabledDatesTextStyle,
      this.blackoutDateTextStyle,
      this.weekendTextStyle,
      this.specialDatesTextStyle,
      this.specialDatesDecoration,
      this.blackoutDatesDecoration,
      this.cellDecoration,
      this.todayCellDecoration,
      this.disabledDatesDecoration,
      this.weekendDatesDecoration});

  final TextStyle? textStyle;

  final TextStyle? todayTextStyle;

  final TextStyle? disabledDatesTextStyle;

  final TextStyle? blackoutDateTextStyle;

  final TextStyle? weekendTextStyle;

  final TextStyle? specialDatesTextStyle;

  final Decoration? specialDatesDecoration;

  final Decoration? weekendDatesDecoration;

  final Decoration? blackoutDatesDecoration;

  final Decoration? disabledDatesDecoration;

  final Decoration? cellDecoration;

  final Decoration? todayCellDecoration;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }

    late final HijriDatePickerMonthCellStyle otherStyle;
    if (other is HijriDatePickerMonthCellStyle) {
      otherStyle = other;
    }
    return otherStyle.textStyle == textStyle &&
        otherStyle.todayTextStyle == todayTextStyle &&
        otherStyle.blackoutDateTextStyle == blackoutDateTextStyle &&
        otherStyle.weekendTextStyle == weekendTextStyle &&
        otherStyle.specialDatesTextStyle == specialDatesTextStyle &&
        otherStyle.specialDatesDecoration == specialDatesDecoration &&
        otherStyle.weekendDatesDecoration == weekendDatesDecoration &&
        otherStyle.blackoutDatesDecoration == blackoutDatesDecoration &&
        otherStyle.disabledDatesDecoration == disabledDatesDecoration &&
        otherStyle.cellDecoration == cellDecoration &&
        otherStyle.todayCellDecoration == todayCellDecoration &&
        otherStyle.disabledDatesTextStyle == disabledDatesTextStyle;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextStyle>('textStyle', textStyle));
    properties
        .add(DiagnosticsProperty<TextStyle>('todayTextStyle', todayTextStyle));
    properties.add(DiagnosticsProperty<TextStyle>(
        'blackoutDateTextStyle', blackoutDateTextStyle));
    properties.add(
        DiagnosticsProperty<TextStyle>('weekendTextStyle', weekendTextStyle));
    properties.add(DiagnosticsProperty<TextStyle>(
        'specialDatesTextStyle', specialDatesTextStyle));
    properties.add(DiagnosticsProperty<TextStyle>(
        'disabledDatesTextStyle', disabledDatesTextStyle));
    properties.add(DiagnosticsProperty<Decoration>(
        'disabledDatesDecoration', disabledDatesDecoration));
    properties
        .add(DiagnosticsProperty<Decoration>('cellDecoration', cellDecoration));
    properties.add(DiagnosticsProperty<Decoration>(
        'todayCellDecoration', todayCellDecoration));
    properties.add(DiagnosticsProperty<Decoration>(
        'blackoutDatesDecoration', blackoutDatesDecoration));
    properties.add(DiagnosticsProperty<Decoration>(
        'weekendDatesDecoration', weekendDatesDecoration));
    properties.add(DiagnosticsProperty<Decoration>(
        'specialDatesDecoration', specialDatesDecoration));
  }

  @override
  int get hashCode {
    return hashList(<dynamic>[
      textStyle,
      todayTextStyle,
      disabledDatesTextStyle,
      specialDatesDecoration,
      weekendDatesDecoration,
      blackoutDatesDecoration,
      disabledDatesDecoration,
      cellDecoration,
      todayCellDecoration,
      specialDatesTextStyle,
      blackoutDateTextStyle,
      weekendTextStyle,
    ]);
  }
}

class HijriDatePickerController extends DateRangePickerValueChangeNotifier {
  HijriDateTime? _selectedDate;
  List<HijriDateTime>? _selectedDates;
  HijriDateRange? _selectedRange;
  List<HijriDateRange>? _selectedRanges;
  HijriDateTime? _displayDate;
  HijriDatePickerView? _view;

  HijriDateTime? get selectedDate => _selectedDate;

  set selectedDate(HijriDateTime? date) {
    if (isSameDate(_selectedDate, date)) {
      return;
    }

    _selectedDate = date;
    notifyPropertyChangedListeners('selectedDate');
  }

  List<HijriDateTime>? get selectedDates => _selectedDates;

  set selectedDates(List<HijriDateTime>? dates) {
    if (DateRangePickerHelper.isDateCollectionEquals(_selectedDates, dates)) {
      return;
    }

    _selectedDates =
        DateRangePickerHelper.cloneList(dates)!.cast<HijriDateTime>();
    notifyPropertyChangedListeners('selectedDates');
  }

  HijriDateRange? get selectedRange => _selectedRange;

  set selectedRange(HijriDateRange? range) {
    if (DateRangePickerHelper.isRangeEquals(_selectedRange, range)) {
      return;
    }

    _selectedRange = range;
    notifyPropertyChangedListeners('selectedRange');
  }

  List<HijriDateRange>? get selectedRanges => _selectedRanges;

  set selectedRanges(List<HijriDateRange>? ranges) {
    if (DateRangePickerHelper.isDateRangesEquals(_selectedRanges, ranges)) {
      return;
    }

    _selectedRanges =
        DateRangePickerHelper.cloneList(ranges)!.cast<HijriDateRange>();
    notifyPropertyChangedListeners('selectedRanges');
  }

  HijriDateTime? get displayDate => _displayDate;

  set displayDate(HijriDateTime? date) {
    if (isSameDate(_displayDate, date)) {
      return;
    }

    _displayDate = date;
    notifyPropertyChangedListeners('displayDate');
  }

  HijriDatePickerView? get view => _view;

  set view(HijriDatePickerView? value) {
    if (_view == value) {
      return;
    }

    _view = value;
    notifyPropertyChangedListeners('view');
  }

  VoidCallback? forward;

  VoidCallback? backward;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<HijriDateTime>('displayDate', displayDate));
    properties
        .add(DiagnosticsProperty<HijriDateTime>('selectedDate', selectedDate));
    properties.add(IterableDiagnostics<HijriDateTime>(selectedDates)
        .toDiagnosticsNode(name: 'selectedDates'));
    properties.add(
        DiagnosticsProperty<HijriDateRange>('selectedRange', selectedRange));
    properties.add(IterableDiagnostics<HijriDateRange>(selectedRanges)
        .toDiagnosticsNode(name: 'selectedRanges'));
    properties.add(EnumProperty<HijriDatePickerView>('view', view));
  }
}

enum HijriDatePickerView {
  month,

  year,

  decade,
}

@immutable
class HijriDatePickerViewChangedArgs {
  const HijriDatePickerViewChangedArgs(this.visibleDateRange, this.view);

  final HijriDateRange visibleDateRange;

  final HijriDatePickerView view;
}

@immutable
class HijriDateRange with Diagnosticable {
  const HijriDateRange(this.startDate, this.endDate);

  final HijriDateTime? startDate;

  final HijriDateTime? endDate;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<HijriDateTime>('startDate', startDate));
    properties.add(DiagnosticsProperty<HijriDateTime>('endDate', endDate));
  }
}

typedef HijriDateRangePickerCellBuilder = Widget Function(
    BuildContext context, HijriDateRangePickerCellDetails cellDetails);

typedef HijriDatePickerSelectableDayPredicate = bool Function(
    HijriDateTime date);

class HijriDateRangePickerCellDetails {
  HijriDateRangePickerCellDetails(
      {required this.date, required this.bounds, required this.visibleDates});

  final HijriDateTime date;

  final Rect bounds;

  final List<HijriDateTime> visibleDates;
}
