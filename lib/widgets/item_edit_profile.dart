import 'package:flutter/material.dart';
import 'package:gap/gap.dart';



class ItemEditProfileWidget extends StatelessWidget {
  final String title;
  final String subtitles;
  const ItemEditProfileWidget({
    Key? key,
    required this.title,
    required this.subtitles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(4),
          Text(
            subtitles,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
