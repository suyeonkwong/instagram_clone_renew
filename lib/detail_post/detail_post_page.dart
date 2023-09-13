import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/domain/post.dart';

import 'detail._post_model.dart';

class DetailPostPage extends StatelessWidget {
  final Post post;

  const DetailPostPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final model = DetailPostModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('돌려보기'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(post.imageUrl),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.getEmail(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Hero(
            tag: post.id,
            child: Image.network(post.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post.title),
          ),
        ],
      ),
    );
  }
}
