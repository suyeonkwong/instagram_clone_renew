import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/domain/post.dart';

class DetailPostPage extends StatelessWidget {
  final Post post;

  const DetailPostPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('돌려보기'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(post.imageUrl),
              )
            ],
          ),
          Image.network(post.imageUrl),
          Text(post.title),
        ],
      ),
    );
  }
}
