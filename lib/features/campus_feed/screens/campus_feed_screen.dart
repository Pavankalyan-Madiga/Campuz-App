import 'package:flutter/material.dart';

import '../data/campus_feed_data.dart';
import '../models/campus_post_model.dart';
import '../widgets/campus_post_card.dart';
import '../widgets/feed_filter_chips.dart';
import 'post_details_screen.dart';

class CampusFeedScreen extends StatefulWidget {
  const CampusFeedScreen({super.key});

  @override
  State<CampusFeedScreen> createState() =>
      _CampusFeedScreenState();
}

class _CampusFeedScreenState
    extends State<CampusFeedScreen> {
  int selectedFilter = 0;

  List<CampusPostModel> get filteredPosts {
    switch (selectedFilter) {
      case 1:
        return campusFeedPosts
            .where(
              (post) =>
                  post.postType == 'Post',
            )
            .toList();

      case 2:
        return campusFeedPosts
            .where(
              (post) =>
                  post.postType ==
                  'Announcement',
            )
            .toList();

      case 3:
        return campusFeedPosts
            .where(
              (post) =>
                  post.postType ==
                  'Notice Board',
            )
            .toList();

      case 4:
        return campusFeedPosts
            .where(
              (post) => post.isUrgent,
            )
            .toList();

      default:
        return campusFeedPosts;
    }
  }

  void _openPost(
    CampusPostModel post,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PostDetailsScreen(
          post: post,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final posts = filteredPosts;

    return Scaffold(


      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            padding:
                const EdgeInsets.fromLTRB(
              22,
              5,
              0,
              14,
            ),
            child: FeedFilterChips(
              selectedIndex:
                  selectedFilter,
              onSelected: (index) {
                setState(() {
                  selectedFilter = index;
                });
              },
            ),
          ),

          Expanded(
            child: posts.isEmpty
                ? _buildEmptyState()
                : ListView.separated(
                    physics:
                        const BouncingScrollPhysics(),
                    padding:
                        const EdgeInsets.fromLTRB(
                      22,
                      18,
                      22,
                      30,
                    ),
                    itemCount:
                        posts.length,
                    separatorBuilder:
                        (_, __) =>
                            const SizedBox(
                      height: 14,
                    ),
                    itemBuilder:
                        (context, index) {
                      final post =
                          posts[index];

                      return CampusPostCard(
                        post: post,
                        onTap: () {
                          _openPost(post);
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Container(
              width: 68,
              height: 68,
              decoration: BoxDecoration(
                color:
                    const Color(0xffF1EEFF),
                borderRadius:
                    BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.feed_outlined,
                size: 34,
                color:
                    Color(0xff4A2ACF),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'No updates found',
              style: TextStyle(
                fontSize: 17,
                fontWeight:
                    FontWeight.w700,
                color:
                    Color(0xff202124),
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'There are no posts available for this filter.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                height: 1.4,
                color:
                    Color(0xff777982),
              ),
            ),
          ],
        ),
      ),
    );
  }
}