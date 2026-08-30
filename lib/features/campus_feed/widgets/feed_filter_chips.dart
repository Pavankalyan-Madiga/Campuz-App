import 'package:flutter/material.dart';

class FeedFilterChips extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const FeedFilterChips({
    super.key,
    required this.selectedIndex,
    required this.onSelected,
  });

  static const List<String> filters = [
    'All',
    'Posts',
    'Announcements',
    'Notice Board',
    'Urgent',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: filters.length,
        separatorBuilder: (_, __) =>
            const SizedBox(width: 9),
        itemBuilder: (context, index) {
          final bool selected =
              selectedIndex == index;

          return GestureDetector(
            onTap: () => onSelected(index),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selected
                    ? const Color(0xff4A2ACF)
                    : const Color(0xffF2F2F6),
                borderRadius:
                    BorderRadius.circular(20),
              ),
              child: Text(
                filters[index],
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: selected
                      ? FontWeight.w700
                      : FontWeight.w500,
                  color: selected
                      ? Colors.white
                      : const Color(0xff666871),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}