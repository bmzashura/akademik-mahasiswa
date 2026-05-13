import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sistem Akademik Mahasiswa"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Institut Teknologi Tangerang Selatan",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              'https://klikdata.co.id/media/uploads/3siakad.png',
              width: 400,
              height: 400,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.school,
                  size: 200,
                  color: Colors.blue,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text("Next >>>"),
            ),
          ],
        ),
      ),
    );
  }
}