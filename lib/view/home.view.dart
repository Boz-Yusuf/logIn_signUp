import 'package:flutter/material.dart';
import 'package:login_signup/utils/global.colors.dart';
import 'package:login_signup/view/widgets/user.post.global.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyPost(),
    
      ),
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'MyBand',
              style: TextStyle(
                color: GlobalColors.secondaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.message),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.notifications),
                ),
                Icon(Icons.settings),
              ],
            )
          ],
        ),
      ),
    );
  }
}
