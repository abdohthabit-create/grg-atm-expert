
import 'package:flutter/material.dart';
import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController controller = TextEditingController();

  void search() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(controller.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("ATM Expert AI PRO"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            const Icon(
              Icons.atm,
              size: 80,
            ),

            const SizedBox(height: 20),

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Enter Error Code",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: search,
              child: const Text("Search"),
            ),

          ],
        ),
      ),
    );
  }
}
