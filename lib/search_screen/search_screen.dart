import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Search",
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 67,
            color: const Color(0xffF1F1F1),
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: TextField(
                autofocus: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'Masukan kata kunci pencarian',
                  suffixIcon: Icon(Icons.clear),
                ),
                onChanged: (text) {}),
          )
        ],
      ),
    );
  }
}
