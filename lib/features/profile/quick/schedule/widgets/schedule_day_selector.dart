import 'package:flutter/material.dart';

class ScheduleDaySelector extends StatelessWidget {
  final List<String> days;
  final List<DateTime> dates;
  final int selectedDay;
  final ValueChanged<int> onDaySelected;

  const ScheduleDaySelector({
    super.key,
    required this.days,
    required this.dates,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(
        16,
        8,
        16,
        18,
      ),
      child: Row(
        children: List.generate(
          days.length,
          (index) {
            final selected = selectedDay == index;

            return Expanded(
              child: GestureDetector(
                onTap: () => onDaySelected(index),
                child: AnimatedContainer(
                  duration:
                      const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 3,
                  ),
                  padding:
                      const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: selected
                        ? const Color(0xff4A2ACF)
                        : const Color(0xffF5F5F7),
                    borderRadius:
                        BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Text(
                        days[index],
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: selected
                              ? Colors.white
                              : const Color(0xff777777),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '${dates[index].day}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: selected
                              ? Colors.white
                              : const Color(0xff202124),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}