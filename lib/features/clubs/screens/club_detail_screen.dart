import 'package:flutter/material.dart';

import '../models/club_model.dart';
import '../widgets/club_about_section.dart';
import '../widgets/club_action_buttons.dart';
import '../widgets/club_header.dart';
import '../widgets/club_member_tile.dart';

class ClubDetailScreen extends StatelessWidget {
  final ClubModel club;

  const ClubDetailScreen({
    super.key,
    required this.club,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),

      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ClubHeader(
                club: club,
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),

            const SliverToBoxAdapter(
              child: ClubActionButtons(),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 28),
            ),

            SliverToBoxAdapter(
              child: ClubAboutSection(
                club: club,
              ),
            ),

            const SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),

            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Club Members',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff17171C),
                  ),
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.fromLTRB(
                20,
                4,
                20,
                30,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ClubMemberTile(
                      name: club.adminName,
                      role: club.adminRole,
                    ),

                    ClubMemberTile(
                      name: 'Club Coordinator',
                      role: 'Coordinator',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}