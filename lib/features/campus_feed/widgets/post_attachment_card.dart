import 'package:flutter/material.dart';

class PostAttachmentCard extends StatelessWidget {
  final String fileName;
  final String fileType;

  const PostAttachmentCard({
    super.key,
    required this.fileName,
    required this.fileType,
  });

  @override
  Widget build(BuildContext context) {
    final bool isPdf =
        fileType.toUpperCase() == 'PDF';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF4F6F9),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: isPdf
                  ? const Color(0xffF1EEFF)
                  : Colors.white,
              borderRadius:
                  BorderRadius.circular(10),
            ),
            child: Icon(
              isPdf
                  ? Icons.picture_as_pdf_outlined
                  : Icons.description_outlined,
              color: isPdf
                  ? const Color(0xff4A2ACF)
                  : const Color(0xff777982),
              size: 21,
            ),
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  fileName,
                  maxLines: 1,
                  overflow:
                      TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff202124),
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  fileType,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color(0xff888991),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          const Icon(
            Icons.chevron_right_rounded,
            size: 21,
            color: Color(0xff9A9BA2),
          ),
        ],
      ),
    );
  }
}