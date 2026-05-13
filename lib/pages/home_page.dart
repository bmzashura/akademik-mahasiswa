import 'package:flutter/material.dart';
import 'package:akademik_mahasiswa/pages/home_tab.dart';
import 'package:akademik_mahasiswa/pages/jadwal_page.dart';
import 'package:akademik_mahasiswa/pages/profil_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeTab(),
    JadwalPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sistem Akademik Mahasiswa"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: "Jadwal Kuliah",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}