import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CineKiala'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              //border: Border.all(style: ),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
