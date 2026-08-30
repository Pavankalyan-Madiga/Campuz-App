import 'package:flutter/material.dart';
import 'package:mycamps/features/profile/profile_screen.dart';

class HomeHeader extends StatelessWidget
    implements PreferredSizeWidget {
  const HomeHeader({super.key});

  static const Color background = Color(0xffFAFAFC);
  static const Color cardColor = Colors.white;
  static const Color iconBackground = Color(0xffF5F5F8);
  static const Color textColor = Color(0xff202124);
  static const Color primary = Color(0xff4A2ACF);

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
              // ==========================================
              // MENU
              // ==========================================

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

              // ==========================================
              // CENTER LOGO
              // ==========================================

              const Expanded(
                child: Center(
                  child: Text(
                    'Campuz',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ),

              // ==========================================
              // PROFILE
              // ==========================================

              _HeaderButton(
                icon: Icons.person_outline_rounded,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const ProfileScreen(),
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

// ======================================================
// HEADER BUTTON
// ======================================================

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
        child: Ink(
          width: 44,
          height: 44,
          // decoration: BoxDecoration(
          //   color: const Color(0xffF5F5F8),
          //   borderRadius: BorderRadius.circular(16),
          // ),
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