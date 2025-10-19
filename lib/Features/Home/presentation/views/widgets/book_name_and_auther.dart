import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookNameAndAuther extends StatelessWidget {
  const BookNameAndAuther({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        SizedBox(
          width:
              MediaQuery.of(context).size.width *
              .5,
          child: Text(
            'A Dream of Spring - Game Of Thrones',
            style: MyStyles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          'Gorge RR Martin',
          style: MyStyles.textStyle14,
        ),
      ],
    );
  }
}
