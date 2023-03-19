import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kompas_clone_mario/widgets/heading_news.dart';
import 'package:kompas_clone_mario/widgets/news_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/ic_kompas_title.png',
          fit: BoxFit.cover,
          height: 30,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            context.go('/homeScreen/searchScreen');
          }, icon: const Icon(Icons.search, size: 30,)),
          IconButton(onPressed: (){
            context.go('/homeScreen/profileUser');
          }, icon: const Icon(Icons.account_circle, size: 30,)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const Gap(20),
          const Text(
            'Editorial Top Stories',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w500
            ),
          ),
          const Gap(20),
          HeadingNewsWidget(
            image: 'assets/img_news_one.png',
            title: 'Hasil Indonesia Masters 2023: Selamat Datang Kembali,Praveen/Melati!',
            category: 'Regional',
            onTap: (){
              context.go('/homeScreen/detailNews');
            },
          ),
          const Gap(20),
          const NewsCard(image: 'assets/img_news_two.png', title: 'PSIS VS PERSIB, tanpa dua pilar inti, Luis Mila punya ...', category: 'Bola'),
          const NewsCard(image: 'assets/img_news_two.png', title: 'PSIS VS PERSIB, tanpa dua pilar inti, Luis Mila punya ...', category: 'Bola'),
          const NewsCard(image: 'assets/img_news_two.png', title: 'PSIS VS PERSIB, tanpa dua pilar inti, Luis Mila punya ...', category: 'Bola'),
        ],
      ),
    );
  }
}
