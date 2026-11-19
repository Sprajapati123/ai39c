import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Card",
              style: TextStyle(
                fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          Text(
            "Simple and easy to use app",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 50,),
          Row(
            children: [
              Expanded(child: Card(
                child: Column(
                  children: [

                  ],
                ),
              )),
              Expanded(child: Card(
                child: Text("hello"),
              ))
            ],
          )
        ],
      ),
    );
  }
}
