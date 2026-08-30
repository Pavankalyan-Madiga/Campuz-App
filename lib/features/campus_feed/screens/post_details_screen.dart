import 'package:flutter/material.dart';

import '../models/campus_post_model.dart';

class PostDetailsScreen extends StatefulWidget {
  final CampusPostModel post;

  const PostDetailsScreen({
    super.key,
    required this.post,
  });

  @override
  State<PostDetailsScreen> createState() =>
      _PostDetailsScreenState();
}

class _PostDetailsScreenState
    extends State<PostDetailsScreen> {
  String? selectedReaction;

  late int likeCount;
  late int loveCount;
  late int smileCount;
  late int insightCount;

  @override
  void initState() {
    super.initState();

    likeCount = widget.post.likeCount;
    loveCount = widget.post.loveCount;
    smileCount = widget.post.smileCount;
    insightCount = widget.post.insightCount;
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

      if (reaction == 'like') {
        likeCount++;
      } else if (reaction == 'love') {
        loveCount++;
      } else if (reaction == 'smile') {
        smileCount++;
      } else if (reaction == 'insight') {
        insightCount++;
      }
    });
  }

  void _removeReaction(String reaction) {
    if (reaction == 'like' && likeCount > 0) {
      likeCount--;
    } else if (reaction == 'love' &&
        loveCount > 0) {
      loveCount--;
    } else if (reaction == 'smile' &&
        smileCount > 0) {
      smileCount--;
    } else if (reaction == 'insight' &&
        insightCount > 0) {
      insightCount--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 21,
            color: Color(0xff17171C),
          ),
        ),
        title: const Text(
          'Post Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff17171C),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(
          22,
          20,
          22,
          30,
        ),
        child: _buildPostCard(),
      ),
    );
  }

  Widget _buildPostCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        22,
        22,
        22,
        18,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          _buildAuthorRow(),

          const SizedBox(height: 28),

          Text(
            widget.post.title,
            style: const TextStyle(
              fontSize: 20,
              height: 1.45,
              fontWeight: FontWeight.w600,
              color: Color(0xff202124),
            ),
          ),

          if (widget.post.content.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text(
              widget.post.content,
              style: const TextStyle(
                fontSize: 15,
                height: 1.55,
                fontWeight: FontWeight.w500,
                color: Color(0xff55565D),
              ),
            ),
          ],

          if (widget.post.attachments.isNotEmpty) ...[
            const SizedBox(height: 28),
            const Text(
              'Attached files',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),
            const SizedBox(height: 13),
            ...widget.post.attachments.map(
              _buildAttachment,
            ),
          ],

          const SizedBox(height: 26),

          Container(
            height: 1,
            color: const Color(0xffE5E5E8),
          ),

          const SizedBox(height: 16),

          _buildReactionRow(),
        ],
      ),
    );
  }

  Widget _buildAuthorRow() {
    return Row(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF1EEFF),
          ),
          alignment: Alignment.center,
          child: Text(
            widget.post.authorInitial,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color(0xff4A2ACF),
            ),
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                widget.post.authorName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff17171C),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.post.authorRole,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff777982),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.post.dateTime,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xff8A8B93),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 8),

        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: widget.post.isUrgent
                ? const Color(0xfffff5e9)
                : const Color(0xffF1EEFF),
            borderRadius:
                BorderRadius.circular(14),
          ),
          child: Icon(
            widget.post.isUrgent
                ? Icons.warning_amber_rounded
                : Icons.campaign_outlined,
            size: 23,
            color: widget.post.isUrgent
                ? const Color(0xffE49A3A)
                : const Color(0xff4A2ACF),
          ),
        ),
      ],
    );
  }

  Widget _buildAttachment(
    CampusPostAttachment attachment,
  ) {
    if (attachment.isImage &&
        attachment.path.isNotEmpty) {
      return Container(
        margin:
            const EdgeInsets.only(bottom: 10),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(14),
        ),
        child: Image.network(
          attachment.path,
          width: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) {
            return _buildFileTile(attachment);
          },
        ),
      );
    }

    return _buildFileTile(attachment);
  }

  Widget _buildFileTile(
    CampusPostAttachment attachment,
  ) {
    return Container(
      width: double.infinity,
      margin:
          const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF1F4F7),
        borderRadius:
            BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          _buildFileIcon(attachment.type),

          const SizedBox(width: 13),

          Expanded(
            child: Text(
              attachment.name,
              maxLines: 2,
              overflow:
                  TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xff202124),
              ),
            ),
          ),

          const SizedBox(width: 8),

          const Icon(
            Icons.chevron_right_rounded,
            size: 22,
            color: Color(0xff92949C),
          ),
        ],
      ),
    );
  }

  Widget _buildFileIcon(String type) {
    IconData icon;

    switch (type.toLowerCase()) {
      case 'pdf':
        icon = Icons.picture_as_pdf_outlined;
        break;
      case 'image':
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'webp':
      case 'gif':
        icon = Icons.image_outlined;
        break;
      case 'ppt':
      case 'pptx':
        icon = Icons.slideshow_outlined;
        break;
      case 'xls':
      case 'xlsx':
        icon = Icons.table_chart_outlined;
        break;
      case 'doc':
      case 'docx':
        icon = Icons.description_outlined;
        break;
      case 'txt':
        icon = Icons.article_outlined;
        break;
      default:
        icon = Icons.insert_drive_file_outlined;
    }

    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: const Color(0xffE9EAF0),
        borderRadius:
            BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        size: 24,
        color: const Color(0xff4A2ACF),
      ),
    );
  }

  Widget _buildReactionRow() {
    return Row(
      children: [
        _reactionButton(
          reaction: 'like',
          icon: Icons.thumb_up_alt_outlined,
          count: likeCount,
        ),

        const SizedBox(width: 18),

        _reactionButton(
          reaction: 'love',
          icon: Icons.favorite_border_rounded,
          count: loveCount,
        ),

        const SizedBox(width: 18),

        _reactionButton(
          reaction: 'smile',
          icon:
              Icons.sentiment_satisfied_alt_outlined,
          count: smileCount,
        ),

        const SizedBox(width: 18),

        _reactionButton(
          reaction: 'insight',
          icon: Icons.lightbulb_outline_rounded,
          count: insightCount,
        ),
      ],
    );
  }

  Widget _reactionButton({
    required String reaction,
    required IconData icon,
    required int count,
  }) {
    final bool selected =
        selectedReaction == reaction;

    return GestureDetector(
      onTap: () {
        _selectReaction(reaction);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 25,
            color: selected
                ? const Color(0xff4A2ACF)
                : const Color(0xff17171C),
          ),
          const SizedBox(width: 5),
          Text(
            '$count',
            style: TextStyle(
              fontSize: 12,
              fontWeight: selected
                  ? FontWeight.w700
                  : FontWeight.w500,
              color: selected
                  ? const Color(0xff4A2ACF)
                  : const Color(0xff55565D),
            ),
          ),
        ],
      ),
    );
  }
}