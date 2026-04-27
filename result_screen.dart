
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final String code;

  const ResultScreen(this.code,{super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Result $code"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Error Code: $code",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Cause: Example cause text",
            ),

            const SizedBox(height: 10),

            const Text(
              "Solution: Example solution text",
            ),

          ],
        ),
      ),
    );
  }
}
