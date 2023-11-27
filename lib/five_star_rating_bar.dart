
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';

// https://www.geeksforgeeks.org/flutter-create-rating-star-bar/

class RatingStarBarRef extends StatefulWidget {
  const RatingStarBarRef({super.key});

  @override
  State<RatingStarBarRef> createState() => _RatingStarBarRefState();
}

class _RatingStarBarRefState extends State<RatingStarBarRef> {
  int ratingCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Five Point Star'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: FivePointedStar(
                onChange: (count) {
                  setState(() {
                    ratingCount = count;
                    print('---------> Rating Count: $ratingCount');
                  });
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              ratingCount.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
