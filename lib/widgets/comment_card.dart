import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 16,
      ),
      child: Row(
        children: [
          // Commentor Profile Picture
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://image.cnbcfm.com/api/v1/image/107196235-1676617290460-_GRAND-PRIZE_WINNER_-_Karthik_Subramaniam.jpg?v=1676635561&w=630&h=354&ffmt=webp&vtcrop=y',
            ),
            radius: 18,
          ),
          // Comment
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'username',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '  Test cmment test comment',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                  ),
                  child: Text(
                    '08/29/2023',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
