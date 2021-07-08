import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Stories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text(
                    'Watch All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,index)=> Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                         Container(
                           width: 60,
                           height: 60,
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                               fit: BoxFit.fill,
                               image: NetworkImage(
                                 "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png"
                               ),
                           ),
                           ),
                           margin: EdgeInsets.symmetric(horizontal: 8),
                         ),
                        index == 0
                        ? Positioned(
                          right: 10,
                            child: CircleAvatar(
                              backgroundColor: Colors.blueAccent,
                              radius: 10,
                              child: Icon(
                                  Icons.add,
                                color: Colors.white,
                                size: 14.0,
                              ),
                            ))
                            : Container()
                      ],
                    ) ),
              ),
          ),
        ],
      ),

    );
  }
}
