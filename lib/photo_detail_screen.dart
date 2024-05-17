import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_model.dart';

class PhotoDetailScreen extends StatelessWidget {
  final Photo photo;

  const PhotoDetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Photo Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(photo.url),
            const SizedBox(height: 16),
            Text('Title: ${photo.title}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Center(child: Text('ID: ${photo.id}', style: const TextStyle(fontSize: 18),),),
          ],
        ),
      ),
    );
  }
}