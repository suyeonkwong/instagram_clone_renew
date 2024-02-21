import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/tab/home/home_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final model = HomeModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Instagram 에 오신 것을 환영 합니다.',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text('사진과 동영상을 보려면 팔로우하세요'),
            const SizedBox(height: 20),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: GestureDetector(
                        onTap: () async {
                          await model.updateProfileImage();
                          setState(() {

                          });
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(model.getProfileImageUrl()),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      model.getEmail(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      model.getNickName(),
                    ),
                    const SizedBox(height: 8),
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
                        const SizedBox(width: 4),
                        Image.network(
                          'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 4),
                        Image.network(
                          'https://i.namu.wiki/i/KHZxgx6dilwr4Z7uu6wSPoVlf5aIb6rq6qIOBV2LYBYdN9cWFaLlvkggojNNTD6mrwtGxS_lTPh4Woge2hzuZQ.webp',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('사진들3개'),
                    const SizedBox(height: 8),
                    const Text('Facebook 친구'),
                    const SizedBox(height: 8),
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
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
