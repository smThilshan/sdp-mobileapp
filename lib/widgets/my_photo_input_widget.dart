import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyPhotoInputButton extends StatefulWidget {
  final Function(List<XFile>?) onPhotosSelected;

  const MyPhotoInputButton({
    required this.onPhotosSelected,
    Key? key,
  }) : super(key: key);

  @override
  _MyPhotoInputButtonState createState() => _MyPhotoInputButtonState();
}

class _MyPhotoInputButtonState extends State<MyPhotoInputButton> {
  List<XFile>? selectedImages = [];

  Future<void> _pickImages(BuildContext context) async {
    try {
      final ImagePicker _picker = ImagePicker();
      final List<XFile>? images = await _picker.pickMultiImage(
        imageQuality: 85,
        maxWidth: 960,
      );

      if (images != null && images.isNotEmpty) {
        setState(() {
          selectedImages = [...?selectedImages, ...images];
        });
      }

      widget.onPhotosSelected(images);
    } catch (e) {
      print('Error picking images: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton.icon(
          onPressed: () => _pickImages(context),
          icon: Icon(Icons.camera),
          label: Text('Add Photo'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            primary: Colors.blue,
          ),
        ),
        SizedBox(height: 10.0),
        if (selectedImages != null && selectedImages!.isNotEmpty)
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              ...selectedImages!
                  .asMap()
                  .entries
                  .map(
                    (entry) => Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Image.file(
                          File(entry.value.path),
                          width: 80.0,
                          height: 80.0,
                          fit: BoxFit.cover,
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            setState(() {
                              selectedImages!.removeAt(entry.key);
                            });
                          },
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                  .toList(),
              GestureDetector(
                onTap: () => _pickImages(context),
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.grey[600],
                      size: 40.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
