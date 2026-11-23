import 'package:ai39c/constants/app_images.dart';
import 'package:ai39c/constants/colors.dart';
import 'package:ai39c/view/authentication/widgets/social_media_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool checked = false;

  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: SocialMediaCard(
                    label: "Facebook",
                    imagePath: fbImage,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SocialMediaCard(
                    label: "Google",
                    imagePath: "assets/images/google (2).png",
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1, color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(thickness: 1, color: Colors.grey)),
              ],
            ),

            SizedBox(height: 40),
            // Text("Email"),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              // maxLines: 5,
              decoration: InputDecoration(
                hint: Text("abc@gmail.com"),
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: pink,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              obscureText: visibility,
              decoration: InputDecoration(
                hint: Text("*******"),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      visibility = !visibility;
                    });
                  },

                  icon: Icon(
                    (visibility == true)
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                filled: true,
                fillColor: Colors.blue.shade50,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),

            TextButton(onPressed: (){}, child: Text("ForgetPassword")),


            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){}, child: Text("Sign In")))
          ],
        ),
      ),
      // bottomNavigationBar: ,
      // floatingActionButton: ,
      // drawer: ,
    );
  }
}
