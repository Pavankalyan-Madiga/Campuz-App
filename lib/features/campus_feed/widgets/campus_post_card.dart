import 'package:flutter/material.dart';

import '../models/campus_post_model.dart';
import 'post_reaction_bar.dart';

class CampusPostCard extends StatelessWidget {
  final CampusPostModel post;
  final VoidCallback onTap;

  const CampusPostCard({
    super.key,
    required this.post,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xffEEEEF3),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),

            const SizedBox(height: 16),

            Text(
              post.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                height: 1.35,
                fontWeight: FontWeight.w700,
                color: Color(0xff202124),
              ),
            ),

            if (post.content.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                post.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: Color(0xff666871),
                ),
              ),
            ],

            if (post.attachments.isNotEmpty) ...[
              const SizedBox(height: 15),
              _buildAttachmentPreview(),
            ],

            const SizedBox(height: 16),

            PostReactionBar(
              likes: post.likeCount,
              loves: post.loveCount,
              smiles: post.smileCount,
              insights: post.insightCount,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF1EEFF),
          ),
          alignment: Alignment.center,
          child: Text(
            post.authorInitial,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff4A2ACF),
            ),
          ),
        ),

        const SizedBox(width: 11),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.authorName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff202124),
                ),
              ),

              const SizedBox(height: 3),

              Text(
                post.authorRole,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8A8B93),
                ),
              ),

              const SizedBox(height: 2),

              Text(
                post.dateTime,
                style: const TextStyle(
                  fontSize: 10,
                  color: Color(0xff9A9BA2),
                ),
              ),
            ],
          ),
        ),

        if (post.isUrgent)
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffffeeee),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Urgent',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                color: Color(0xffE53935),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildAttachmentPreview() {
    final attachment = post.attachments.first;

    if (attachment.isImage &&
        attachment.path.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.network(
          attachment.path,
          width: double.infinity,
          height: 180,
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
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: const Color(0xffF8F8FB),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: const Color(0xffF1EEFF),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(
              _fileIcon(attachment.type),
              color: const Color(0xff4A2ACF),
              size: 21,
            ),
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Text(
              attachment.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff202124),
              ),
            ),
          ),

          const Icon(
            Icons.chevron_right_rounded,
            color: Color(0xffA0A1A7),
          ),
        ],
      ),
    );
  }

  IconData _fileIcon(String type) {
    switch (type.toLowerCase()) {
      case 'pdf':
        return Icons.picture_as_pdf_rounded;

      case 'doc':
      case 'docx':
        return Icons.description_rounded;

      case 'ppt':
      case 'pptx':
        return Icons.slideshow_rounded;

      case 'xls':
      case 'xlsx':
        return Icons.table_chart_rounded;

      case 'txt':
        return Icons.article_outlined;

      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'webp':
      case 'gif':
      case 'image':
        return Icons.image_rounded;

      default:
        return Icons.insert_drive_file_outlined;
    }
  }
}