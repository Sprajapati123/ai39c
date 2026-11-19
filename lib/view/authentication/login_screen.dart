import 'package:ai39c/view/authentication/widgets/social_media_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "It was popularized in 1960 with the release of letraset",
              style: TextStyle(color: Colors.grey, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: SocialMediaCard(
                    label: "Facebook",
                    imagePath: "assets/images/fb.png",
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: SocialMediaCard(
                    label: "Google",
                    imagePath: "assets/images/google (2).png",
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),

              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // drawer: ,
    );
  }
}
