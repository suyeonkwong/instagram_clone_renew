import 'package:flutter/material.dart';
import 'package:instagram_clone_renew/create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<String> _urls = const [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9CyGWI-J5S0W0w29dJDF4amJ-Qj_fFzzUV-YjpVVQ2vOUsSMvaXju-xhR6OuNCM6he1A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEj_ry3_xBlIfz-mtrW71uoffOjYBfZSzdWw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZy-zgXRjDYxi8LVsqT2VOmGaluzdtTI0Tmg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFeNyd0LMUsKF8rqWXxLNJbJNE2PqjB0x8_A&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
          itemCount: _urls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 1.0,
            crossAxisSpacing: 2.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];
            return Image.network(
              url,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
