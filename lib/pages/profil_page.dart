import 'package:flutter/material.dart';
import 'splash_page.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  static const String nama = "Raja Bendawa";
  static const String nim = "20141450001";
  static const String prodi = "Teknik Informatika";

  void _handleLogout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const SplashPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
          ),
          const SizedBox(height: 20),
          const Text(
            nama,
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 8),
          Text(
            nim,
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 8),
          const Text(
            prodi,
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () => _handleLogout(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
            ),
            child: const Text(
              "Logout",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}