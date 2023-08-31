import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Instagram 에 오신 것을 환영 합니다.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text('사진과 동영상을 보려면 팔로우하세요'),
            SizedBox(height: 20),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp'),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'test@test.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('닉네임'),
                    SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 4),
                        Image.network(
                          'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 4),
                        Image.network(
                          'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text('사진들3개'),
                    SizedBox(height: 8),
                    Text('Facebook 친구'),
                    SizedBox(height: 8),
                    // ElevatedButton(
                    //     onPressed: () {},
                    //     child: Text('팔로우'))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
