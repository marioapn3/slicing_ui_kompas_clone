import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.image,
    required this.title,
    required this.category,
    this.onTap,
    this.onPressedMore,
  });

  final String image;
  final String title;
  final String category;
  final VoidCallback? onTap;
  final VoidCallback? onPressedMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          category,
                          style: const TextStyle(
                            color: Colors.orange
                          ),
                        ),
                        const Gap(4),
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      ],
                    ),
                  ),
                  const Gap(20),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 119,
                      height: 88,
                    ),
                  )
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '23 Jan 2023, 17: 40',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz_outlined,
                    size: 24,
                    color: Color(0xffF1F1F1),
                  )
                ],
              ),
              const Gap(20),
            ],
          ),
        ),
        const Divider(
          color: Color(0xffF1F1F1),
          thickness: 1,
        )
      ],
    );
  }
}
