import 'package:flutter/material.dart';
import 'package:mycamps/features/profile/profile_screen.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HomeHeader({
    super.key,
    required this.title,
  });

  static const Color cardColor = Colors.white;
  static const Color textColor = Color(0xff202124);

  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: cardColor,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 76,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 76,
          child: Row(
            children: [
              Builder(
                builder: (context) {
                  return _HeaderButton(
                    icon: Icons.menu_rounded,
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: textColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ),
              _HeaderButton(
                icon: Icons.person_outline_rounded,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _HeaderButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        splashColor: const Color(0xff4A2ACF).withOpacity(0.08),
        highlightColor: const Color(0xff4A2ACF).withOpacity(0.04),
        child: SizedBox(
          width: 44,
          height: 44,
          child: Icon(
            icon,
            size: 23,
            color: const Color(0xff202124),
          ),
        ),
      ),
    );
  }
}