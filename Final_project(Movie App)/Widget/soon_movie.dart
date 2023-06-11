import 'package:flutter/material.dart';
import 'package:gogo/Screen/detail_screen.dart';

class SoonMovie extends StatelessWidget {
  final String thumb;
  final String? title;
  final num id;

  const SoonMovie({
    super.key,
    required this.thumb,
    required this.id,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              id: id,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(10, 10),
                  color: Colors.black.withOpacity(0.5),
                )
              ],
            ),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500/$thumb",
              height: 150,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              headers: const {
                "User-Agent":
                    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 100, // 원하는 너비로 설정
            child: Text(
              title!,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
