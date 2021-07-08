import 'package:flutter/material.dart';
import 'package:flutter_instagram/insta_body.dart';

class InstagramHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        centerTitle: true,
        elevation: 0.5,
        leading: Icon(Icons.camera_alt),
        title: SizedBox(
          height: 30,
            child: Image.asset("assets/images/insta_logo.png")
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(Icons.send),
          ),
        ],
      ),
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add_box),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.account_box),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
