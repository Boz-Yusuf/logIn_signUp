import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              //profile photo
              Container(
                width: 40.0,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'dasdasdadadassssssdasdad',
            style: TextStyle(),
          ),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(Icons.favorite),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(Icons.share),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(6),
                  child: Icon(Icons.bookmark_add),
                ),
              ],
            )
          ],
        ),
      ],
    );
    ;
  }
}
