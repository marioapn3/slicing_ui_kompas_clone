import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:kompas_clone_mario/widgets/menu_card_custom.dart';

class MenuNews extends StatelessWidget {
  const MenuNews({Key? key}) : super(key: key);

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
          const Gap(24),
          Wrap(
            spacing: 20,
            alignment: WrapAlignment.center,
            runSpacing: 20,
            children: const [
              MenuCategoryCardWidget(),
              MenuCategoryCardWidget(),
              MenuCategoryCardWidget(),
              MenuCategoryCardWidget(),
            ],
          )
        ],
      ),
    );
  }
}
