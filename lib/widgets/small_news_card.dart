import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SmallNewsCard extends StatelessWidget {
  const SmallNewsCard({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.423,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(image,fit: BoxFit.fill, ),
          ),
          Text(
            title,
            textAlign: TextAlign.justify,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  child: Text(
                    'Tren',
                    style: TextStyle(
                        color: Colors.deepOrange
                    ),
                  ),
                onTap: () {
                    context.go('/homeScreen');
                },
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.more_horiz_outlined,
                    size: 24,
                    color: Colors.grey,
              )
              ),

            ],
          )
        ],
      ),
    );
  }
}
