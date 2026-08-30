import 'package:flutter/material.dart';

class PostReactionBar extends StatefulWidget {
  final int likes;
  final int loves;
  final int smiles;
  final int insights;
  final int comments;

  const PostReactionBar({
    super.key,
    required this.likes,
    required this.loves,
    required this.smiles,
    required this.insights,
    this.comments = 0,
  });

  @override
  State<PostReactionBar> createState() =>
      _PostReactionBarState();
}

class _PostReactionBarState extends State<PostReactionBar> {
  late int likeCount;
  late int loveCount;
  late int smileCount;
  late int insightCount;

  String? selectedReaction;

  @override
  void initState() {
    super.initState();

    likeCount = widget.likes;
    loveCount = widget.loves;
    smileCount = widget.smiles;
    insightCount = widget.insights;
  }

  void _selectReaction(String reaction) {
    setState(() {
      if (selectedReaction == reaction) {
        _removeReaction(reaction);
        selectedReaction = null;
        return;
      }

      if (selectedReaction != null) {
        _removeReaction(selectedReaction!);
      }

      selectedReaction = reaction;
      _addReaction(reaction);
    });
  }

  void _addReaction(String reaction) {
    switch (reaction) {
      case 'like':
        likeCount++;
        break;

      case 'love':
        loveCount++;
        break;

      case 'smile':
        smileCount++;
        break;

      case 'insight':
        insightCount++;
        break;
    }
  }

  void _removeReaction(String reaction) {
    switch (reaction) {
      case 'like':
        if (likeCount > 0) {
          likeCount--;
        }
        break;

      case 'love':
        if (loveCount > 0) {
          loveCount--;
        }
        break;

      case 'smile':
        if (smileCount > 0) {
          smileCount--;
        }
        break;

      case 'insight':
        if (insightCount > 0) {
          insightCount--;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _reactionButton(
          reaction: 'like',
          icon: Icons.thumb_up_alt_outlined,
          selectedIcon: Icons.thumb_up_alt_rounded,
          count: likeCount,
        ),

        const SizedBox(width: 17),

        _reactionButton(
          reaction: 'love',
          icon: Icons.favorite_border_rounded,
          selectedIcon: Icons.favorite_rounded,
          count: loveCount,
        ),

        const SizedBox(width: 17),

        _reactionButton(
          reaction: 'smile',
          icon: Icons.sentiment_satisfied_alt_outlined,
          selectedIcon: Icons.sentiment_satisfied_alt_rounded,
          count: smileCount,
        ),

        const SizedBox(width: 17),

        _reactionButton(
          reaction: 'insight',
          icon: Icons.lightbulb_outline_rounded,
          selectedIcon: Icons.lightbulb_rounded,
          count: insightCount,
        ),

        const Spacer(),

        if (widget.comments > 0)
          Row(
            children: [
              const Icon(
                Icons.chat_bubble_outline_rounded,
                size: 21,
                color: Color(0xff202124),
              ),
              const SizedBox(width: 5),
              Text(
                '${widget.comments}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xff777982),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _reactionButton({
    required String reaction,
    required IconData icon,
    required IconData selectedIcon,
    required int count,
  }) {
    final bool selected = selectedReaction == reaction;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _selectReaction(reaction);
        },
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                selected ? selectedIcon : icon,
                size: 21,
                color: selected
                    ? const Color(0xff4A2ACF)
                    : const Color(0xff777982),
              ),

              const SizedBox(width: 5),

              Text(
                '$count',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: selected
                      ? FontWeight.w700
                      : FontWeight.w500,
                  color: selected
                      ? const Color(0xff4A2ACF)
                      : const Color(0xff777982),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}