import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class HeadingNewsWidget extends StatelessWidget {
  const HeadingNewsWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.category,
    this.onTap,
    this.onPressedMore,
  }) : super(key: key);

  final String image;
  final String title;
  final String category;
  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const Gap(20),
          Text(
            category,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 14,
            ),
          ),
          const Gap(4),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                  size: 30.0,
                  color: Color(0xffF1F1F1),
                ),
                onPressed: onPressedMore,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
