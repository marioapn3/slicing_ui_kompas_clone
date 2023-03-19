import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:go_router/go_router.dart';


class MenuCategoryCardWidget extends StatelessWidget {
  const MenuCategoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: SizedBox(
              child: Image.asset(
                'assets/img_category_one.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 8.0,
            left: 7.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Tren',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(4),
                Text(
                  'Berita Terpopuler',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
