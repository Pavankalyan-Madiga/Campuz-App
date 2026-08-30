import 'package:flutter/material.dart';

class ScheduleDateSelector extends StatelessWidget {
  final int selectedIndex;
  final List<Map<String, String>> days;
  final ValueChanged<int> onDateSelected;

  const ScheduleDateSelector({
    super.key,
    required this.selectedIndex,
    required this.days,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff3F3A82),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SizedBox(
        height: 105,
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
          children: List.generate(
            days.length,
            (index) {
              final bool isSelected =
                  selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  onDateSelected(index);
                },
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                  width: 68,
                  height: isSelected ? 80 : 72,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius:
                        BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Text(
                        days[index]['day'] ?? '',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight:
                              FontWeight.w600,
                          color: isSelected
                              ? const Color(0xff202124)
                              : Colors.white,
                        ),
                      ),

                      const SizedBox(height: 7),

                      Text(
                        days[index]['date'] ?? '',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight:
                              FontWeight.w700,
                          color: isSelected
                              ? const Color(0xff111111)
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}