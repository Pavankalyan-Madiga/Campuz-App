import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AttachmentPicker extends StatefulWidget {
  final ValueChanged<PlatformFile?> onSelected;

  const AttachmentPicker({
    super.key,
    required this.onSelected,
  });

  @override
  State<AttachmentPicker> createState() =>
      _AttachmentPickerState();
}

class _AttachmentPickerState
    extends State<AttachmentPicker> {
  PlatformFile? selectedFile;

  static const List<String> allowedExtensions = [
    'jpg',
    'jpeg',
    'png',
    'webp',
    'gif',
    'pdf',
    'doc',
    'docx',
    'ppt',
    'pptx',
    'xls',
    'xlsx',
    'txt',
  ];

  Future<void> _pickFile() async {
    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: allowedExtensions,
      allowMultiple: false,
      withData: false,
    );

    if (result == null || result.isEmpty) {
      return;
    }

    final file = result.first;

    final extension =
        file.extension?.toLowerCase();

    if (extension == null ||
        !allowedExtensions.contains(extension)) {
      _showError();
      return;
    }

    setState(() {
      selectedFile = file;
    });

    widget.onSelected(file);
  }

  void _removeFile() {
    setState(() {
      selectedFile = null;
    });

    widget.onSelected(null);
  }

  void _showError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'This file type is not supported.',
        ),
      ),
    );
  }

  bool get isImage {
    final extension =
        selectedFile?.extension?.toLowerCase();

    return [
      'jpg',
      'jpeg',
      'png',
      'webp',
      'gif',
    ].contains(extension);
  }

  @override
  Widget build(BuildContext context) {
    if (selectedFile == null) {
      return InkWell(
        onTap: _pickFile,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xffEEEEF3),
            ),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.attach_file_rounded,
                color: Color(0xff4A2ACF),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add attachment',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff55565D),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Images and documents only',
                      style: TextStyle(
                        fontSize: 11,
                        color: Color(0xff999AA1),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.add_rounded,
                color: Color(0xff4A2ACF),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xffEEEEF3),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: const Color(0xffF1EEFF),
              borderRadius:
                  BorderRadius.circular(12),
            ),
            child: Icon(
              isImage
                  ? Icons.image_rounded
                  : Icons.description_rounded,
              color: const Color(0xff4A2ACF),
            ),
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Text(
              selectedFile!.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xff202124),
              ),
            ),
          ),
          IconButton(
            onPressed: _removeFile,
            icon: const Icon(
              Icons.close_rounded,
              size: 20,
              color: Color(0xff777982),
            ),
          ),
        ],
      ),
    );
  }
}