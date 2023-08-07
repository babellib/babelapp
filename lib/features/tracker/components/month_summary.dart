import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:ui/features/tracker/datetime/date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;

  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: HeatMap(
        startDate: createDateTimeObject(startDate),
        endDate: DateTime.now().add(Duration(days: 48)),
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Colors.grey[300],
        textColor: Colors.deepPurple[300],
        showColorTip: false,
        showText: true,
        scrollable: true,
        size: 30,
        colorsets: const {
          1: Color.fromARGB(20, 179, 2, 179),
          2: Color.fromARGB(40, 179, 2, 179),
          3: Color.fromARGB(60, 179, 2, 179),
          4: Color.fromARGB(80, 179, 2, 179),
          5: Color.fromARGB(100, 179, 2, 179),
          6: Color.fromARGB(120, 179, 2, 179),
          7: Color.fromARGB(150, 179, 2, 179),
          8: Color.fromARGB(180, 179, 2, 179),
          9: Color.fromARGB(220, 179, 2, 179),
          10: Color.fromARGB(255, 179, 2, 179),
        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}
