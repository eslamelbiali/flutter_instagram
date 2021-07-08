import 'package:flutter/material.dart';
import 'package:flutter_instagram/insta_list.dart';

class InstaBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
            child: InstaList(),
        ),
      ],
    );
  }
}
